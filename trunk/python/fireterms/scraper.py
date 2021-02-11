
import urllib2, urllib, urlparse, re, codecs
from bs4 import BeautifulSoup
from terms import Term, TermSet
from skos import FragmentConceptFactory, TermsetConceptSchemeFactory
#from ditamodel import TermsetGlossGroupFactory, DefaultGlossEntryFactory

abbrev = re.compile(r'^.+(?P<abbrev>\(.+\))$')
		
def prepString(rawstring) : 
	trimmed = rawstring.strip()
	return htmlcondense.sub(' ', trimmed)

def nextSiblingTag(tag) : 
	tag = tag.nextSibling
	while (tag != None and type(tag) != BeautifulSoup.Tag) : 
		tag = tag.nextSibling
	return tag
	
def parseNameForAbbrev(term_name) :
	ab = None
	m = abbrev.match(term_name)
	if m is not None : 
		ab = m.group('abbrev')
		# remove abbreviation from the term name
		term_name = term_name[:-len(ab)].strip()     

		#now strip out the parens
		ab=ab[1:-1]
	return term_name, ab


def generateKey(name) :
	 """Spaces make some RDF parsers choke and may not be valid identifiers.
	 Change spaces to underscores and perform URL friendly escaping.
	 There's also formatting and special characters like registered trademarks.
	 """
	 name = unicode(name)
	 name = name.replace(u'/', u'_')
	 name = name.replace(u'\xa0',u'_')
	 name = name.replace(u'\u2019', u'_')
	 name = name.replace(u'\u201c', u'_')
	 name = name.replace(u'\u201d', u'_')
	 name = name.replace(u'\xae',u'_')
	 name = name.replace(u' ',u'_')
	 print name
	 return urllib.quote(name)
	 
	 
def parseEntry(tag) : 
    """Given the first <td> in the row containing a term and a definition, 
    parse out the term, the definition, and the various optional attributes
    (synonyms, sources, see alsos, etc.) from the definition."""	
    
    # parse out the term name. Check for abbreviations
    term_name = tag.a.text.strip()
    term_name, abbreviation = parseNameForAbbrev(term_name) 
    if abbreviation is not None: 
        abbreviation = [abbreviation] 
    
    # start parsing (possibly multiple) definitions
    description = tag.next_sibling
    definition_tag = description.li
    def_list =[]
    see_also_list = []
    synonym_list = []
    source_text = None
    source_link = None

    while definition_tag is not None: 
       # Get the definition text. We don't want recursion because that will
       # eat up the subordinant list full of "extras", parsed out below.
	    definition = definition_tag.find(text=True, recursive=False)
	    # Sometimes (rarely) the definition is encapsulated by a <p> Tag.
	    if definition is None and definition_tag.p is not None :
	        definition = definition_tag.p.find(text=True, recursive=False)
	    # Sometimes (rarely) the definition is encapsulated by an <i> Tag.
	    if definition is None and definition_tag.i is not None :
	        definition = definition_tag.i.find(text=True, recursive=False)
	        
	    see_also = []
	    synonym = []
	    
	    # check to see if the description contains a Source
	    desc_html = str(description)
	    pos  = desc_html.rfind('Source:')
	    if pos != -1 : 
	   	  # If there's a source, remove the "source" bits from the description 
	        source_text = desc_html[pos:]
	        source_soup = BeautifulSoup(source_text, 'html.parser')
	        
	        
	        source_text = source_soup.text[7:].strip()
	        
	        # if there's a subordinate ul element (see also or synonyms)
	        # then get rid of it out of the source text.
	        other_stuff = definition_tag.ul
	        if other_stuff is not None :        
	            source_text = source_text[:-(len(other_stuff.text)+1)]
	        
	        if source_soup.a is not None : 
	            source_link = source_soup.a['href']
	        
	        #chop out the source bits
	        dpos = definition.rfind('Source')
	        definition = definition[:dpos]
	        
	    # check to see if there's "more"
	    extras = definition_tag.li
	    while extras is not None:
	    	  # references flagged with "see also" sometimes "See Also" sometimes "See also"
	        see_also_pos = extras.text.lower().find('see also')
	        if see_also_pos != -1 : 
	            see_also_text = extras.text[9:].strip()
	            see_also_terms = [ generateKey(s.strip()) for s in see_also_text.split(';') ]
	            see_also = see_also + see_also_terms
	        else:
		        # references flagged with "See"    
		        see_also_pos = extras.text.find('See')
		        if see_also_pos != -1 : 
		            see_also_text = extras.text[3:].strip()
		            see_also_terms = [ generateKey(s.strip()) for s in see_also_text.split(';') ]
		            see_also = see_also + see_also_terms
	        
	        
	        synonym_pos = extras.text.find('synonym')
	        if synonym_pos != -1 : 
	            synonym.append(generateKey(extras.text[9:].strip()))
	        
	        extension_pos = extras.text.find('Definition Extension')
	        if extension_pos != -1 :
	            definition = definition + " " + extras.text.strip()

	        extras = extras.next_sibling
	    
	    # accumulate the "features" of this definition into the term's properties 
	    if definition is not None :    
	        def_list.append(definition.strip())
	    else :
	        print "%s lacks a definition..." % term_name
	    synonym_list = synonym_list + synonym
	    see_also_list = see_also_list + see_also	        
	        
	    definition_tag = definition_tag.next_sibling
    
    # If we don't have any of these things, set them to None
    if not see_also_list: 
       see_also_list = None
    if not synonym_list :
    	 synonym_list = None        
    
    return Term(generateKey(term_name), term_name, def_list, see_also_list, synonym_list, source_text=source_text, source_link=source_link, 
                abbrev=abbreviation)
         
   
def _parsePage(handle, terms=None) :
	soup = BeautifulSoup(handle, 'html.parser')

   # If we need a place to store the terms, make it.
	if terms is None : 
		terms = TermSet()
       
   # find all the definitions
	definitions = soup.find_all('td',class_='views-field-name')
   
   # parse all the definitions.
	for d in definitions: 
		this_term = parseEntry(d)
		terms.addTerm(this_term)
   
	return terms
    
def parsePage(url, terms=None) :
	f= urllib2.urlopen(url) 
	retval = _parsePage(f, terms)
	f.close()
	return retval
	
	
def parseFile(fname, terms=None) :
	with open(fname) as f :
		retval = _parsePage(f, terms)
	return retval



	

def char_range(c1, c2):
    """Generates the characters from `c1` to `c2`, inclusive."""
    for c in xrange(ord(c1), ord(c2)+1):
        yield chr(c)

def parseGlossary(baseUrl) : 
	terms = None
	pages = list(char_range('a', 'w'))
	pages.append('z')
	pages.append('6')
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
	f.write(u'   xmlns:dct="http://purl.org/dc/terms/">\n')

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


