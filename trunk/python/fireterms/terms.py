class Definition (str) : 
	def setPartOfSpeech(self, pos) : 
		self._partOfSpeech = pos
	def getPartOfSpeech(self, pos) : 
		return self._partOfSpeech

class Term (object) : 
	def __init__(self, key, label, defs, refs, syns, acronyms=None, abbrev=None, shortForms=None, source_text=None, source_link=None) : 
		self._key = key
		self._englishLabel = label
		self._englishDefs = defs
		self._references = refs
		self._synonyms = syns
		self._abbrev = [] 
		self._acronyms = []
		self._shortForms = [] 
		self._source_text = source_text
		self._source_link = source_link
		if abbrev != None : 
			self._abbrev = abbrev
		if acronyms != None : 
			self._acronyms = acronyms
		if shortForms != None :
			self._shortForms = shortForms

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
	def getAbbreviations(self) : 
		return self._abbrev
	def getAcronyms(self) : 
		return self._acronyms
	def getShortForms(self) : 
		return self._shortForms
	def getSourceText(self): 
		return self._source_text
	def getSourceLink(self) :
		return self._source_link
	def hasSource(self) : 
		return self._source_text is not None
	def hasReferences(self) : 
		return self._references is not None
	def hasSynonyms(self) : 
		return self._synonyms is not None
	def hasAbbreviations(self) :
		return len(self._abbrev) != 0
		    


class TermSet (object) : 
	def __init__(self) : 
		self._terms = {}
		self._unresolvedRefs = set()
		self._unresolvedSyns = set() 

	def addTerm(self, term) : 
		self._terms[term.getKey()] = term
		if term.hasReferences() :
			for ref in term.getReferences() : 
				if not (ref in self._terms) : 
					self._unresolvedRefs.add(ref)
		if term.hasSynonyms() :
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
			if item.hasSynonyms()  : 
				syns.append(item)
		return syns
