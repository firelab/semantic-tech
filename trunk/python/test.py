import scraper
import pickle


terms = scraper.parseGlossary('https://www.nwcg.gov/glossary/a-z/sort/')
#gfile = open('glossary.pickle')
#terms = pickle.load(gfile)
#gfile.close()

cs = scraper.convertGlossaryToSKOS('https://www.nwcg.gov/glossary/a-z/sort', terms)
#print "There are %d unresolved references and %d unresolved synonyms." % (len(terms.getUnresolvedRefs()), len(terms.getUnresolvedSyns()))
urefs = set(terms.getUnresolvedRefs() )
usyns = set(terms.getUnresolvedSyns() )
td = terms.getTermDictionary() 
tkeys = list(td.keys())
tkeys.sort() 

for tkey in tkeys : 
	term = td[tkey]
	if term.hasReferences() :    
		temp = set(term.getReferences())
		if not urefs.isdisjoint(temp) : 
			unknown = urefs.intersection(temp)
			for i in unknown : 
				print "%s references unknown term '%s'" % (term.getLabel(), i)
for tkey in tkeys : 
	term = td[tkey]
	if term.hasSynonyms() :
		temp = set(term.getSynonyms())
		if not usyns.isdisjoint(temp) : 
			unknown = usyns.intersection(temp)
			for i in unknown : 
				print "%s synonymous with unknown term '%s'" % (term.getLabel(), i)
		
	

#syns = terms.getTermsWithSynonyms()
#print "There are %d synonyms." % len(syns)
#td = terms.getTermDictionary()
#for syn in syns  : 
#	for synkey in syn.getSynonyms() : 
#		if synkey in terms.getUnresolvedSyns() :
#			continue 
#		thissyn = td[synkey]
#		print "[%s<->%s] %s" % (syn.getKey(), thissyn.getKey(), str(syn.getDefinitions()[0]==thissyn.getDefinitions()[0]))


#for syn in syns : 
#	unresolved = syn.getSynonyms()[0] in terms.getUnresolvedSyns()
#	print "[%s] %s : %s" %(str(unresolved), syn.getKey(),syn.getSynonyms())

scraper.rdfout('glossary.rdf', cs)
