import pickle

def summarizeTerm(terms,key) : 
	t = terms.getTerm(key)
	return [t.getLabel(), t.getSynonyms(), t.getReferences()]

def summarizeClosure(terms, seed, summary=None) : 
	if summary == None : 
		summary = {} 

	if seed in summary.keys() : 
		return

	if (seed in terms.getUnresolvedRefs()) or \
	   (seed in terms.getUnresolvedSyns()) : 
		return 

	summary[seed] = summarizeTerm(terms, seed)

	for i in terms.getTerm(seed).getSynonyms() : 
		summarizeClosure(terms, i, summary)
	for i in terms.getTerm(seed).getReferences() : 
		summarizeClosure(terms, i, summary)

	return summary

pf = open('glossary.pickle')
terms = pickle.load(pf)
pf.close() 

s = summarizeClosure(terms, 'Assigned_Resources')

for i in s : 
	print "|%s|%s|%s|%s|" % (i,s[i][0],s[i][1],s[i][2])
