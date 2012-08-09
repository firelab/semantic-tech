class Term (object) : 
	def __init__(self,key, label, defs, refs, syns) : 
		self._key = key
		self._englishLabel = label
		self._englishDefs = defs
		self._references = refs
		self._synonyms = syns

	def getKey(self) :
		return self._key
	def getLabel(self) : 
		return self._englishLabel
	def getDefinitions(self) : 
		return self._englishDefs
	def getReferences(self) : 
		return self._references
	def getSynonyms(self) : 
		return self._synonyms

	def getSkos(self) : 
		data =  [ u'<skos:Concept rdf:about="http://www.nwcg.gov/pms/pubs/glossary#%s" >' % self._key,
			u'\t<skos:prefLabel xml:lang="en">%s</skos:prefLabel>' % self._englishLabel ] 
		for edef in self._englishDefs : 
			data.append(u'\t<skos:scopeNote xml:lang="en">%s</skos:scopeNote>' % edef )
		if (self._references != None and len(self._references) > 0) : 
			for ref in self._references : 
				data.append(u'\t<skos:related rdf:resource="http://www.nwcg.gov/pms/pubs/glossary#%s"/>' % ref)
		data.append(u'</skos:Concept>')
		return '\n'.join(data)

class TermSet (object) : 
	def __init__(self) : 
		self._terms = {}
		self._unresolvedRefs = set()
		self._unresolvedSyns = set() 

	def addTerm(self, term) : 
		self._terms[term.getKey()] = term
		for ref in term.getReferences() : 
			if not (ref in self._terms) : 
				self._unresolvedRefs.add(ref)
		for syn in term.getSynonyms() : 
			if not (syn in self._terms) : 
				self._unresolvedSyns.add(syn)

		if term.getKey() in self._unresolvedRefs : 
			self._unresolvedRefs.remove(term.getKey())
		if term.getKey() in self._unresolvedSyns : 
			self._unresolvedSyns.remove(term.getKey())

	def newTerm(self, key, label, defs, refs) : 
		term = Term(key, label, defs, refs) 
		self.addTerm(term)

	def getNumUnresolved(self) :
		return len(self._unresolvedRefs) + len(self._unresolvedSyns)

	def getUnresolvedRefs(self) : 
		return self._unresolvedRefs
		
	def getUnresolvedSyns(self) : 
		return self._unresolvedSyns

	def getTermDictionary(self) :
		return self._terms

	def getTermSet(self) : 
		return self._terms.values()
		
	def hasTerm(self, key) : 
		return key in self._terms.keys()
		
	def getTerm(self, key) : 
		return self._terms[key]
		
	def getTermsWithSynonyms(self) : 
		syns = [ ]
		for item in self.getTermSet() : 
			if len(item.getSynonyms()) > 0 : 
				syns.append(item)
		return syns
