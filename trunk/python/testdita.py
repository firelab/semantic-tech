import scraper
import pickle
import sys

terms = scraper.parseGlossary('http://www.nwcg.gov/pms/pubs/glossary')
#gfile = open('glossary.pickle')
#terms = pickle.load(gfile)
#gfile.close()

gg = scraper.convertGlossaryToDita('http://firelab.org/cv', 'nwcg', terms)
scraper.ditaout('glossary.dita', gg)
#syns = terms.getTermsWithSynonyms()
#print "There are %d synonyms (%d unresolved)." % (len(syns), len(terms.getUnresolvedSyns()))
#td = terms.getTermDictionary()
#for syn in syns  : 
#	for synkey in syn.getSynonyms() : 
#		if synkey in terms.getUnresolvedSyns() :
#			continue 
#		thissyn = td[synkey]
#		print "[%s<->%s]" % (syn.getKey(), thissyn.getKey())

sys.exit()

#print "There are %d unresolved references and %d unresolved synonyms." % (len(terms.getUnresolvedRefs()), len(terms.getUnresolvedSyns()))
urefs = set(terms.getUnresolvedRefs() )
usyns = set(terms.getUnresolvedSyns() )
td = terms.getTermDictionary() 
tkeys = list(td.keys())
tkeys.sort() 

for tkey in tkeys : 
	term = td[tkey]
	temp = set(term.getReferences())
	if not urefs.isdisjoint(temp) : 
		unknown = urefs.intersection(temp)
		for i in unknown : 
			print "%s references unknown term '%s'" % (term.getLabel(), i)
for tkey in tkeys : 
	term = td[tkey]
	temp = set(term.getSynonyms())
	if not usyns.isdisjoint(temp) : 
		unknown = usyns.intersection(temp)
		for i in unknown : 
			print "%s synonymous with unknown term '%s'" % (term.getLabel(), i)
		
	



#for syn in syns : 
#	unresolved = syn.getSynonyms()[0] in terms.getUnresolvedSyns()
#	print "[%s] %s : %s" %(str(unresolved), syn.getKey(),syn.getSynonyms())

