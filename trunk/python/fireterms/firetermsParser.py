from terms import Definition, Term, TermSet
import urllib, urlparse, re, BeautifulSoup


def dereferenceResource(soup, linktag):
	# get the xref fragment
	frag = linktag['x-use-popup']
	# strip off the hash which indicates a fragment
	target = frag[1:len(frag)]
	t = soup.find('div', {'id' : target, 'class' :'x-popup-text'})
	return t
	
def getRelatedTerms(soup, linktag) : 
	related = []
	rtag = dereferenceResource(soup, linktag)
	if rtag != None : 
		rtag = rtag.find('li')
	while rtag != None : 
		related.append(rtag.p.string)
		rtag = rtag.nextSibling()
	return related
	
def getName(soup, linktag) : 
	name = None
	ntag = dereferenceResource(soup, linktag)
	if ntag != None : 
		ntag = ntag.p
		if ntag != None
			ntag = ntag.nextSibling() 
			if ntag != None : 
				name = ntag.string
	return name
		
	

def scanLocalPage(page) : 
	pfile = open(page)
	soup = BeautifulSoup.BeautifulSoup(pfile, convertEntities=BeautifulSoup.BeautifulSoup.HTML_ENTITIES)

	# Get the term
	t = soup.find('h1', 'Title')
	term = t.string

	# Locate the short definition/part of speech
	t = soup.find('p', 'definition')
	pos_tag = t.find('span')
	pos = pos_tag.string
	short_def = pos_tag.next().string

	# get the definition
	t = soup.find(text='more')
	definition = dereferenceResource(soup, t).prettify()

	# get the units
	t = soup.find(text="Units")
	units = dereferenceResource(soup, t).prettify()

	# get related terms
	t = soup.find(text="See Also")
	related = getRelatedTerms(soup, t)
	
	# get Author
	t = soup.find(text="Author")
	author = getName(soup, t)
	
	# get Modification time
	t = soup.find(text="Last update")
	modtime = getName(soup, t)
	
	# get References
	t = soup.find(text="References")
	references = dereferenceResource(soup, t).prettify()
	


