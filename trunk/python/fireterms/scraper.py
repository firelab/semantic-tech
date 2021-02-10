
import urllib, urlparse, re, BeautifulSoup, codecs
from terms import Term, TermSet
from skos import FragmentConceptFactory, TermsetConceptSchemeFactory
#from ditamodel import TermsetGlossGroupFactory, DefaultGlossEntryFactory

labelproc = re.compile(r'^(?P<label>[^()]+[A-Za-z0-9])\s*(\((?P<acronym>.+)\))?$')
htmlcondense = re.compile(r'\s+')
		
def prepString(rawstring) : 
	trimmed = rawstring.strip()
	return htmlcondense.sub(' ', trimmed)

def nextSiblingTag(tag) : 
	tag = tag.nextSibling
	while (tag != None and type(tag) != BeautifulSoup.Tag) : 
		tag = tag.nextSibling
	return tag
	
	

def parseEntry(tag) :
	if nextSiblingTag(tag) == None or tag['class'] != u'term' or len(tag.contents)==0 :
 
		return (nextSiblingTag(tag), None)

	# the "key" is always the name attribute of the child's anchor
	key = tag.a['name']
	englishLabel = None
	englishDefs = []
	refs = [] 
	syns = [] 
	acronym = None

	# If the next tag is another paragraph, its contents are the English 
	# representation of the term.
	if (nextSiblingTag(tag).name == u'p') and (nextSiblingTag(tag)['class']==u'term') : 
		tag = nextSiblingTag(tag)
		englishLabel = tag.contents[len(tag.contents)-1].strip()
	else : 
		# Otherwise, the name comes from the last element of the contents
		englishLabel = tag.contents[len(tag.contents)-1].strip()
	m = labelproc.match(englishLabel)
	if m != None : 
		englishLabel = m.group('label')
		acronym = m.group('acronym')
	else :
		print "Failed to parse '%s'." % englishLabel

	# advance to the definition list
	while not (((tag.name == u'ol') and (tag['class'] == u'definition')) or \
	           ((tag.name == u'p') and (tag['class'] == u'reference'))):
		tag = nextSiblingTag(tag)
	
	# Now comes the list of definitions
	if tag['class'] == u'definition' :
		for defTag in tag.contents : 
			if (type(defTag)==BeautifulSoup.Tag) and (defTag.name == u'li') and (defTag['class'] == u'definition') : 
				if (len(defTag.contents) == 1) : 
					englishDefs.append(prepString(defTag.string))
				else : 
					strings = [ item for item in defTag.contents if type(item)==BeautifulSoup.NavigableString ]
					englishDefs.append(prepString(' '.join(strings)))
		tag = nextSiblingTag(tag)
				

	# Now are some optional references and synonyms
	while (tag != None) and (tag.name == u'p') and (tag['class'] == u'reference') : 
		if tag.em.string.startswith(u'synonym') or \
		   tag.em.string.startswith(u'see:') : 
			for refTag in tag.contents :
				if (type(refTag) == BeautifulSoup.Tag and refTag.name == u'a') : 
					refurl =  urlparse.urlparse(refTag['href'])
					syns.append(refurl.fragment)
					if tag.em.string.startswith(u'see:') : 
						print "%s -> %s" % (englishLabel, refurl.fragment)
		if tag.em.string.startswith(u'see also') : 
			for refTag in tag.contents : 
				if (type(refTag) == BeautifulSoup.Tag and refTag.name == u'a') : 
					refurl =  urlparse.urlparse(refTag['href'])
					refs.append(refurl.fragment)
		tag = nextSiblingTag(tag)
		
	if acronym == None : 
		term = Term(key, englishLabel, englishDefs, refs, syns)
	else : 
		term = Term(key, englishLabel, englishDefs, refs, syns, [acronym]) 

	return (tag, term)


	
def parsePage(url, terms=None) : 
	f = urllib.urlopen(url)
	b = BeautifulSoup.BeautifulSoup(f, convertEntities=BeautifulSoup.BeautifulSoup.HTML_ENTITIES)
	if terms == None : 
		terms = TermSet()

	divtag = b.find('div')
	while divtag != None : 
		tag = divtag.find('p', 'term')
		while tag != None : 
			dummy, term = parseEntry(tag)
			if (term != None) : 
				terms.addTerm(term)
			if tag != None : 
				tag = tag.findNextSibling('p', {'class':'term'})
#			while (tag != None) and not ((tag.name == u'p') and (tag['class'] == u'term')) :
#				tag = nextSiblingTag(tag)
		divtag = divtag.findNextSibling('div')

	return terms

def char_range(c1, c2):
    """Generates the characters from `c1` to `c2`, inclusive."""
    for c in xrange(ord(c1), ord(c2)+1):
        yield chr(c)

def parseGlossary(baseUrl) : 
	terms = None
	pages = list(char_range('a', 'w'))
	pages.append('z')
	for page in pages : 
		url = (baseUrl + "/%c") % page
		print "Parsing %s" % url
		terms = parsePage(url, terms)
	return terms
	
def convertGlossaryToSKOS(baseUrl, terms) : 
	cf = FragmentConceptFactory(baseUrl)
	csf = TermsetConceptSchemeFactory(cf)
	return csf.newConceptScheme(terms, baseUrl)

#def convertGlossaryToDita(baseUrl, name, terms) : 
#	cf = DefaultGlossEntryFactory()
#	csf = TermsetGlossGroupFactory(cf)
#	return csf.newGlossGroup(terms, baseUrl, name)


def termsout(file, terms) : 
	f = codecs.open(file, 'w', 'utf-8')
	tk = list(terms.getTermDictionary().keys())
	tk.sort()
	
	td = terms.getTermDictionary()
	for termkey in tk : 
		f.write(td[termkey].getLabel() + u':\n')
		for d in td[termkey].getDefinitions() : 
			f.write(u'\t%s\n' % d)
	f.close()
	

def rdfout(file, cs) : 
	f = codecs.open(file, 'w', 'utf-8')

	# write the header
	f.write(u'<?xml version="1.0" encoding="UTF-8"?>\n')
	f.write(u'<rdf:RDF \n') 
	f.write(u'   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\n')
	f.write(u'   xmlns:skos="http://www.w3.org/2004/02/skos/core#">\n')

	# sort the concepts by key
	cs_keys = list(cs.getScheme().keys())
	cs_keys.sort()
	for key in cs_keys : 
		concept = cs.getScheme()[key]
		f.write(concept.ustr() + u'\n')
		
	# write out the concept scheme
	f.write(cs.ustr() + u'\n')

	f.write(u'</rdf:RDF>\n')
	f.close()

def ditaout(file, gg) : 
	f = codecs.open(file, 'w', 'utf-8')

	# write the header
	f.write(u'<?xml version="1.0" encoding="UTF-8"?>\n')
	f.write(u'<!DOCTYPE glossgroup PUBLIC "-//OASIS//DTD DITA Glossary Group//EN" "glossgroup.dtd">\n') 

	f.write(gg.ustr())
	f.close()


