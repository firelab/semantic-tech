from skos import ConceptTermMap

class TextElement (object) : 
	def __init__(self, text) : 
		self._text = text
	def hasText(self) : 
		return self._text != None
	def getText(self) : 
		return self._text
	def __eq__(self, other) : 
		return self._text == other._text
	def ustr(self) : 
		return u'<%s>%s</%s>' % (self._elementName, self._text, self._elementName)

class GlossTerm (TextElement) : 
	def __init__(self, term) : 
		TextElement.__init__(self, term)
		self._elementName = u'glossterm'

class GlossDef (TextElement) : 
	def __init__(self, definition) : 
		TextElement.__init__(self, definition)
		self._elementName = u'glossdef'
		
class GlossAcronym(TextElement) : 
	def __init__(self, term) :
		TextElement.__init__(self, term)
		self._elementName = u'glossAcronym'
class GlossAbbreviation(TextElement) : 
	def __init__(self, term) :
		TextElement.__init__(self, term)
		self._elementName = u'glossAbbreviation'
class GlossShortForm(TextElement) : 
	def __init__(self, term) :
		TextElement.__init__(self, term)
		self._elementName = u'glossShortForm'
class GlossSynonym(TextElement) : 
	def __init__(self, term) :
		TextElement.__init__(self, term)
		self._elementName = u'glossSynonym'
		
class GlossAlt (object) : 
	def __init__(self, alt, myid=None, altfor=None) :
		self._alt = alt
		self._id  = myid
		self._altfor = altfor
	def __eq__(self, other) : 
		return self._alt == other._alt
	def ustr(self) : 
		retval = []
		if self._id == None : 
			retval.append(u'<glossAlt>')
		else : 
			retval.append(u'<glossAlt id="%s">' % self._id)
		retval.append(self._alt.ustr())
		if self._altfor != None : 
			retval.append(u'<glossAlternateFor href="%s"/>' % self._altfor)
		retval.append(u'</glossAlt>')
		return u'\n'.join(retval)
		
class ReferenceFragment (object) : 
	def __init__(self, topicref, elementref=None) : 
		self._topicref = topicref
		self._elementref = elementref
	def getTopicRef(self) :
		return self._topicref
	def hasElementRef(self) : 
		return self._elementref != None
	def getElementRef(self):
		return self._elementref
	def ustr(self) : 
		retval = self._topicref
		if self.hasElementRef() : 
			retval = retval + u'/' + self._elementref
		return retval
			
class Link (object) : 
	def __init__(self, topicref, linktext=None, elementref=None) : 
		self._fragment = ReferenceFragment(topicref, elementref)
		self._linktext = linktext
	def getTarget(self) : 
		return self._fragment.ustr()
	def hasLinkText(self) :
		return self._linktext != None
	def getLinkText(self) : 
		return self._linktext
	def ustr(self) : 
		if not self.hasLinkText() : 
			return u'<link href="#%s"/>' % self.getTarget()
		else : 
			return u'<link href="#%s"><linktext>%s</linktext></link>' % (self.getTarget(), self.getLinkText())
		
class OtherRoleLink (Link) : 
	def __init__(self, topicref, role, lt=None, elementref=None) : 
		Link.__init__(self, topicref, elementref=elementref, linktext=lt)
		self._role = role
	def ustr(self) : 
		if not self.hasLinkText() : 
			return u'<link href="#%s" role="other" otherrole="%s"/>' % (self.getTarget(), self._role)
		else:
			return u'<link href="#%s" role="other" otherrole="%s"><linktext>%s</linktext></link>' % (self.getTarget(), self._role, self.getLinkText())
			

class PartOfSpeech (object) : 
	def __init__(self, pos) : 
		self._pos = pos
		self._adjustPartOfSpeech()
	def _adjustPartOfSpeech(self) : 
		if self._pos == "n" : 
			self._pos = "noun"
		if self._pos == "v" : 
			self._pos = "verb" 
		if self._pos == "adj" : 
			self._pos = "adjective"
		if self._pos == "adv" : 
			self._pos = "adverb"
	def ustr(self) : 
		return u'<glossPartOfSpeech value="%s"/>' % self._pos
	
class Source (TextElement) : 
	def __init__(self, href, text) : 
		TextElement.__init__(self, text)
		self._elementName = u'source'
		self._href = href
	def ustr(self) : 
		retval = None
		if self.hasText() : 
			retval = TextElement.ustr(self)
		else : 
			retval = u'<%s href="%s" />' % (self._elementName, self._href)
		return retval

	
class GlossEntry (object) : 
	def __init__(self, term, gdef, myid=None) : 
		self._term = GlossTerm(term)
		self._gdef = GlossDef(gdef)
		self._id   = myid
		self._partOfSpeech = None
		self._alts = []
		self._related = []
		
	def addAlternate(self, alt) : 
		self._alts.append(alt)
		print "%s has new alternate term %s" % (self.getGlossTerm().getText(), alt._alt.getText())
	def addPartOfSpeech(self, pos) : 
		self._partOfSpeech = PartOfSpeech(pos)
	def addLocalRelated(self, othertopicref, linktext) : 
		self._related.append(Link(othertopicref, linktext))
		print "%s related to %s" % (self.getId(), othertopicref)
	def addSynRelated(self, othertopicref, linktext) : 
		self._related.append(OtherRoleLink(othertopicref, "synonym",linktext))
		print "%s related to %s" % (self.getId(), othertopicref)
	def addRelatedEntry(self, otherEntry) : 
		self.addLocalRelated(otherEntry.getId(), otherEntry.getGlossTerm().getText())
	def isAltOnly(self) : 
		return not self._gdef.hasText()
	def getGlossTerm(self) : 
		return self._term
	def getKey(self) : 
		return self.getId()
	def getId(self) :
		if self._id != None : 
			return self._id
		else :
			return self._term.getText()
			
	def merge(self, other) : 
		if self == other : 
			return False
		if (self._gdef == other._gdef) or not other._gdef.hasText() : 
			# convert the "other's" glossterm to a glossalt as a synonym
			syn = GlossSynonym(other.getGlossTerm().getText())
			self.addAlternate(GlossAlt(syn))
			
			# copy the "other's" glossAlts
			for otheralt in other._alts : 
				self.addAlternate(otheralt)
			return True
		return False
		
	def ustr(self) :
		retval = [ u'<glossentry id="%s">' % self.getId(),
		           self._term.ustr(), self._gdef.ustr() ] 
		if (self._partOfSpeech != None) or (len(self._alts) > 0) :
			retval.append(u'<glossBody>')
			if self._partOfSpeech != None : 
				retval.append(self._partOfSpeech.ustr())
			for alt in self._alts : 
				retval.append(alt.ustr())
			retval.append(u'</glossBody>')
		if len(self._related) > 0 : 
			retval.append(u'<related-links>')
			for link in self._related : 
				retval.append(link.ustr())
			retval.append(u'</related-links>')
			
		retval.append(u'</glossentry>')
		return '\n'.join(retval)
		
class GlossGroup (object) : 
	def __init__(self, baseURI, name, lang="en") : 
		self._baseURI = baseURI
		self._name = name
		self._lang = lang
		self._entries = {} 
	def addEntry(self, entry) : 
		k = entry.getKey()
		self._entries[k] = entry
	def getEntry(self, key) : 
		retval = None
		if key in self._entries : 
			retval = self._entries[key]
		return retval 
	def removeEntry(self, key) : 
		if key in self._entries : 
			del(self._entries[key])
	def ustr(self) : 
		absref = self._baseURI + '/' + self._name
		retval = [ u'<glossgroup id="%s" xml:lang="%s">' % (self._name, self._lang) ,
				   u'<title>%s</title>' % self._name,
				   u'<prolog><resourceid id="%s"/></prolog>' % absref ]
		entrykeys = list(self._entries.keys() )
		entrykeys.sort()
		for entrykey in entrykeys : 
			retval.append(self._entries[entrykey].ustr())
		retval.append(u'</glossgroup>')
		return u'\n'.join(retval)
		
class DefaultGlossEntryFactory (object) : 
	def newEntry(self, term, gdef, myid=None) : 
		return GlossEntry(term, gdef, myid) 
		
class TermsetGlossGroupFactory (object) : 
	def __init__(self, entryFactory) : 
		self._entryFactory = entryFactory
		self._synonyms = {}

	def newGlossGroup(self, termset, baseUri, name) :
		gg = GlossGroup(baseUri, name)
		mapping = ConceptTermMap() 
		self._createAndSplitEntries(termset, mapping, gg)
		self._mergeEntries(termset, mapping, gg)
		self._addRelationships(termset, mapping, gg)
		return gg 
		
	def _createAndSplitEntries(self, termset, mapping, gg) : 
		"""Phase 1: Create an entry for every term and every definition."""
		td = termset.getTermDictionary()
		for term in td.values() : 
			acronyms = [] 
			if len(term.getAcronyms()) > 0 : 
				for a in term.getAcronyms() : 
					acronyms.append(GlossAlt(GlossAcronym(a)))
			termkey = term.getKey()
			termlabel = term.getLabel()
			if len(term.getDefinitions()) == 0 : 
				# create a glossentry without a definition
				entry = self._entryFactory.newEntry(termlabel, None, termkey)
				if len(acronyms) > 0 : 
					for a in acronyms : 
						entry.addAlternate(a)
				mapping.mapTerm2Concept(termkey, entry.getId())
				gg.addEntry(entry)
			else :
				# create glossentries for each definition
				defs = term.getDefinitions()
				for senseidx in range(len(defs)) :
					if senseidx == 0 :
						entry = self._entryFactory.newEntry(termlabel, defs[senseidx], termkey)
					else : 
						thisid = "%s%d" % (termkey, senseidx)
						entry = self._entryFactory.newEntry(termlabel, defs[senseidx], thisid)
					if len(acronyms) > 0 : 
						for a in acronyms : 
							entry.addAlternate(a)
					
					mapping.mapTerm2Concept(termkey, entry.getId())
					gg.addEntry(entry)
			
	def _mergeEntries(self, termset, mapping, gg) : 
		"""Phase 2: For each "synonymous term", merge the associated concepts."""
		removedUris = []
		for term in termset.getTermDictionary().values() : 
			if len(term.getSynonyms()) > 0 : 
				termkey = term.getKey()
				termconceptURIs = mapping.getConcepts(termkey)
				for synkey in term.getSynonyms(): 
					if synkey in termset.getUnresolvedSyns() : 
						continue
					synConceptURIs = mapping.getConcepts(synkey)
					for tcuri in termconceptURIs : 
						if tcuri in removedUris : 
							continue
						tc = gg.getEntry(tcuri)
						for scuri in synConceptURIs : 
							if scuri in removedUris : 
								continue
							if tcuri == scuri : 
								continue
							sc = gg.getEntry(scuri)
							# ensure that concepts with no "preferred labels"
							# are the ones to be merged/removed
							if tc.isAltOnly() : 
								tmp = tc
								tc = sc
								sc = tmp
								tmp = tcuri
								tcuri = scuri
								scuri = tmp
							if tc.merge(sc) : 
								removedUris.append(scuri)
								gg.removeEntry(scuri)
								mapping.remapConcept(scuri, tcuri)
							else :
								# if the merge failed, add a related link with a synonym role
								# these require manual cleanup
								tc.addSynRelated(scuri,sc.getGlossTerm().getText())
								sc.addSynRelated(tcuri,tc.getGlossTerm().getText())

	def _addRelationships(self, termset, mapping, gg) : 
		"""Phase 3: Add "related" relationships"""
		for term in termset.getTermDictionary().values() : 
			if len(term.getReferences()) > 0 : 
				termkey = term.getKey()
				termconceptURIs = list(mapping.getConcepts(termkey))
				for refkey in term.getReferences() : 
					if refkey in termset.getUnresolvedRefs() : 
						continue
					refConceptURIs = list(mapping.getConcepts(refkey))
					for tcuri in termconceptURIs : 
						tc = gg.getEntry(tcuri)
						for rcuri in refConceptURIs : 
							rc = gg.getEntry(rcuri)
							if rc == None : 
								print refConceptURIs
							tc.addRelatedEntry(rc)

