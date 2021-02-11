class InternationalizedText (object) : 
	def __init__(self, contents, elementName=None, lang="en") : 
		self._contents = unicode(contents)
		self._elementName = unicode(elementName)
		self._lang = unicode(lang)

	def getLang(self) : 
		return self._lang
	def getContents(self) : 
		return self._contents
	def ustr(self) : 
		return u'<skos:%s xml:lang="%s">%s</skos:%s>' % \
		  (self._elementName,self._lang,self._contents,self._elementName)
	def __eq__(self, other) : 
		return (other != None) and \
			   (self._elementName == other._elementName) and \
		       (self._contents == other._contents) and \
		       (self._lang == other._lang)

class Note (InternationalizedText) : 
	def __init__(self, contents, lang="en") : 
		InternationalizedText.__init__(self, contents, "Note", lang)
class ChangeNote (Note) :
	def __init__(self, contents, lang="en") : 
		InternationalizedText.__init__(self, contents, "changeNote", lang)
class Definition (Note) :  
	def __init__(self, contents, lang="en") : 
		InternationalizedText.__init__(self, contents, "definition", lang)
class EditorialNote (Note) :
	def __init__(self, contents, lang="en") : 
		InternationalizedText.__init__(self, contents, "editorialNote", lang)
class Example (Note) : 
	def __init__(self, contents, lang="en") : 
		InternationalizedText.__init__(self, contents, "example", lang)
class HistoryNote (Note) :
	def __init__(self, contents, lang="en") : 
		InternationalizedText.__init__(self, contents, "historyNote", lang)
class ScopeNote (Note) :  
	def __init__(self, contents, lang="en") : 
		InternationalizedText.__init__(self, contents, "scopeNote", lang)

class PrefLabel (InternationalizedText) : 
	def __init__(self, contents, lang="en") : 
		InternationalizedText.__init__(self, contents, "prefLabel", lang)
class AltLabel (InternationalizedText) : 
	def __init__(self, contents, lang="en") : 
		InternationalizedText.__init__(self, contents, "altLabel", lang)
class HiddenLabel (InternationalizedText) : 
	def __init__(self, contents, lang="en") : 
		InternationalizedText.__init__(self, contents, "hiddenLabel", lang)

class SemanticRelation (object) : 
	def __init__(self, target, elementName=None) :
		self._target = target
		self._elementName = unicode(elementName)
	def getTarget(self) : 
		return self._target
	def getTargetURI(self) : 
		if self._target == None : 
			return None
		else :
			return self._target.getURI()
	def __eq__(self, other) : 
		return (self._target == other._target) and (self._elementName == other._elementName)
	def ustr(self) : 
		return u'<skos:%s rdf:resource="%s"/>' % (self._elementName, self.getTargetURI())

class Related (SemanticRelation) : 
	def __init__(self, target) : 
		SemanticRelation.__init__(self, target, "related")
class BroaderTransitive (SemanticRelation) :
	def __init__(self, target) : 
		SemanticRelation.__init__(self, target, "broaderTransitive")
	def getInverse(self,me) :
		return NarrowerTransitive(me)
class NarrowerTransitive (SemanticRelation) : 
	def __init__(self, target) : 
		SemanticRelation.__init__(self, target, "narrowerTransitive")
	def getInverse(self,me) :
		return BroaderTransitive(me)
class Broader (BroaderTransitive) : 
	def __init__(self, target) : 
		SemanticRelation.__init__(self, target, "broader")
	def getInverse(self,me) :
		return Narrower(me)
class Narrower (NarrowerTransitive) : 
	def __init__(self, target) : 
		SemanticRelation.__init__(self, target, "narrower")
	def getInverse(self,me) :
		return Broader(me)


class Concept (object) : 
	def __init__(self, uri) : 
		self._uri = unicode(uri) 
		self._notes = [] 
		self._labels = set() 
		self._relationships = []
		self._prefLabelLang = set()
		self._source = []
	def getURI(self): 
		return self._uri
	def addNote(self, note) : 
		self._notes.append(note)
	def removeNote(self, note) : 
		if note in self._notes : 
			self._notes.remove(note)
	def addLabel(self, label) : 
		if type(label) == PrefLabel : 
			if not (label.getLang() in self._prefLabelLang) :
				self._prefLabelLang.add(label.getLang())
			else : 
				return None
		self._labels.add(label) 
	def getPrefLabel(self, lang="en") : 
		retval = None
		for l in self._labels : 
			if (type(l) == PrefLabel) and (l.getLang() == lang) : 
				retval = l 
		return retval 
	def addRelated(self, target) : 
		rel = Related(target)
		if rel in self._relationships : return None
		self._relationships.append(rel)
		inv_rel = Related(self)
		target._relationships.append(inv_rel)
	def addHeirarchy(self, fwd) : 
		target = fwd.getTarget()
		rev = fwd.getInverse(self)
		self._relationships.append(fwd) 
		target._relationships.append(rev)
	def addSource(self, source) :
		self._source.append(source)
	def hasSource(self) :
		return len(self._source) != 0
	def merge(self, other) : 
		if self == other : 
			return
		# merge the labels, converting PrefLabel to AltLabel if necessary
		for ol in other._labels : 
			if (type(ol) == PrefLabel) and (ol.getLang() in self._prefLabelLang) : 
				self.addLabel(AltLabel(ol.getContents(), ol.getLang()))
			else : 
				self.addLabel(ol)
		# merge the notes
		for on in other._notes :
			self.addNote(on)
		# there should not be any relationships at this point (phase 3) so don't worry.
	def ustr(self) : 
		info = [ u'<skos:Concept rdf:about="%s">' % self._uri ] 
		for prop in self._notes : 
			info.append(prop.ustr())
		for prop in self._labels : 
			info.append(prop.ustr())
		for prop in self._relationships : 
			info.append(prop.ustr())
		if self.hasSource() :
			for s in self._source :
				info.append(u'<dct:source>%s</dct:source>'%s)
		info.append(u'</skos:Concept>')
		return '\n'.join(info)
			
    
class ConceptScheme (object) : 
	def __init__(self, uri) : 
		self._uri = unicode(uri)
		self._scheme = {}
		self._topConcepts = {}
	def getURI(self): 
		return self._uri
	def addConcept(self, concept, top=False) : 
		self._scheme[concept.getURI()] = concept
		if top : 
			self._topConcepts[concept.getURI()] = concept
	def getConcept(self, uri) : 
		retval = None
		if uri in self._scheme : 
			retval = self._scheme[uri]
		return retval
	def removeConcept(self, uri) : 
		if uri in self._scheme : 
			del(self._scheme[uri])
		if uri in self._topConcepts : 
			del(self._topConcepts[uri])
	def getScheme(self) : 
		return self._scheme
	def getTopConcepts(self) :
		return self._topConcepts
	def ustr(self) : 
		info = [ u'<skos:ConceptScheme rdf:about="%s">' % self._uri ]
		for conceptkey in self._topConcepts : 
			concept = self._topConcepts[conceptkey]
			info.append(u'<skos:hasTopConcept rdf:resource="%s"/>' % concept.getURI())
		info.append(u'</skos:ConceptScheme>')
		for conceptkey in self._scheme : 
			if not conceptkey in self._topConcepts : 
				concept = self._scheme[conceptkey]
				info.append(u'<skos:Concept rdf:about="%s">' % concept.getURI())
				info.append(u'<skos:inScheme rdf:resource="%s"/>' % self._uri)
				info.append(u'</skos:Concept>')
		return u'\n'.join(info)
			
		
class ConceptTermMap (object) : 
	def __init__(self) : 
		self._concept2term = {} 
		self._term2concept = {}
		
	def _addMapping(self, d, key, val) : 
		if not key in d : 
			tmp = [] 
			tmp.append(val)
			d[key] = tmp
		else : 
			if not val in d[key] : 
				d[key].append(val)
	
	def _removeMapping(self, d, key, val) : 
		if key in d : 
			if val in d[key] :
				(d[key]).remove(val)
			
	def mapConcept2Term(self, concept, term) : 
		self._addMapping(self._concept2term, concept, term)
		self._addMapping(self._term2concept, term, concept) 
	def mapTerm2Concept(self, term, concept) : 
		self._addMapping(self._concept2term, concept, term)
		self._addMapping(self._term2concept, term, concept) 
	def unmapConcept2Term(self, concept, term) : 
		self._removeMapping(self._concept2term, concept, term)
		self._removeMapping(self._term2concept, term, concept) 
	def unmapTerm2Concept(self, term, concept) : 
		self._removeMapping(self._concept2term, concept, term)
		self._removeMapping(self._term2concept, term, concept) 
	def unmapConcept(self, concept) : 
		relatedTerms = self.getTerms(concept) 
		if relatedTerms != None : 
			for term in relatedTerms : 
				self.unmapConcept2Term(concept, term)
				del(self._concept2term[concept])
	def remapConcept(self, former, current)  :
		if former == current : 
			return
		relatedTerms = list(self.getTerms(former)) 
		if relatedTerms != None : 
			for term in relatedTerms : 
				self.unmapConcept2Term(former, term) 
				self.mapConcept2Term(current, term)
		
	def getTerms(self, concept) : 
		retval = None
		if concept in self._concept2term :
			retval = self._concept2term[concept]
		return retval 
		
	def getConcepts(self, term) : 
		retval = None
		if term in self._term2concept : 
			retval = self._term2concept[term]
		return retval
			
class FragmentConceptFactory (object) : 
	def __init__(self, baseUri) : 
		self._baseUri = baseUri
	def newConcept(self, fragment) : 
		return Concept(self._baseUri + '#' + fragment) 
		
class TermsetConceptSchemeFactory (object) : 
	def __init__(self, conceptFactory) : 
		self._conceptFactory = conceptFactory
		self._synonyms = {}

	def newConceptScheme(self, termset, schemeUri) :
		cs = ConceptScheme(schemeUri)
		mapping = ConceptTermMap() 
		self._createConcepts(termset, mapping, cs)
		self._splitConcepts(termset, mapping, cs)
		#self._mergeConcepts(termset, mapping, cs)
		self._addRelationships(termset, mapping, cs)
		return cs 
		
	def _createConcepts(self, termset, mapping, cs) : 
		"""Phase 1: Just create all the concepts."""
		td = termset.getTermDictionary()
		for term in td.values() : 
			termkey = term.getKey()
			concept = self._conceptFactory.newConcept(termkey)
			concept.addLabel(PrefLabel(term.getLabel()))
			if term.hasSynonyms() :
				for syn in term.getSynonyms() :
					concept.addLabel(AltLabel(syn))
			if term.hasAbbreviations() :
				for a in term.getAbbreviations() :
					concept.addLabel(AltLabel(a))
			if term.hasSource() :
				concept.addSource(term.getSourceText())
				concept.addSource(term.getSourceLink())
			for sense in term.getDefinitions() : 
				concept.addNote(Definition(sense))
			
			mapping.mapTerm2Concept(termkey, concept.getURI())
			cs.addConcept(concept)
			
	def _splitConcepts(self, termset, mapping, cs) : 
		"""Phase 2: For each concept with more than one definition, split into multiple concepts
			with a single definition."""
		for term in termset.getTermDictionary().values() : 
			if len(term.getDefinitions()) > 1 : 
				defs = term.getDefinitions() 
				baseUri = term.getKey() 
				origConceptUri = mapping.getConcepts(baseUri)[0]
				origConcept = cs.getConcept(origConceptUri)
				for suffix in range(1,len(defs)) :
					tgtUri = "%s%d" % (baseUri, suffix)
					concept = self._conceptFactory.newConcept(tgtUri)
					concept.addLabel(origConcept.getPrefLabel())
					thisdef = Definition(defs[suffix])
					thisscope = ScopeNote(defs[suffix])
					origConcept.removeNote(thisdef)
					origConcept.removeNote(thisscope)
					concept.addNote(thisdef)
					concept.addNote(thisscope)
					
					mapping.mapTerm2Concept(term.getKey(), concept.getURI())
					cs.addConcept(concept)

	def _mergeConcepts(self, termset, mapping, cs) : 
		"""Phase 3: For each "synonymous term", merge the associated concepts."""
		removedUris = []
		for term in termset.getTermDictionary().values() : 
			if term.hasSynonyms() : 
				termkey = term.getKey()
				termconceptURIs = mapping.getConcepts(termkey)
				for synkey in term.getSynonyms(): 
					if synkey in termset.getUnresolvedSyns() : 
						continue
					synConceptURIs = mapping.getConcepts(synkey)
					for tcuri in termconceptURIs : 
						if tcuri in removedUris : 
							continue
						tc = cs.getConcept(tcuri)
						for scuri in synConceptURIs : 
							if scuri in removedUris : 
								continue
							if tcuri == scuri : 
								continue
							removedUris.append(scuri)
							sc = cs.getConcept(scuri)
							# ensure that concepts with no "preferred labels"
							# are the ones to be merged/removed
							if tc.getPrefLabel() == None : 
								tmp = tc
								tc = sc
								sc = tmp
								tmp = tcuri
								tcuri = scuri
								scuri = tmp
							tc.merge(sc)
							cs.removeConcept(scuri)
							mapping.remapConcept(scuri, tcuri)
							
	def _addRelationships(self, termset, mapping, cs) : 
		"""Phase 4: Add "related" relationships"""
		for term in termset.getTermDictionary().values() : 
			if term.hasReferences() : 
				termkey = term.getKey()
				termconceptURIs = list(mapping.getConcepts(termkey))
				for refkey in term.getReferences() : 
					if refkey in termset.getUnresolvedRefs() : 
						continue
					refConceptURIs = list(mapping.getConcepts(refkey))
					for tcuri in termconceptURIs : 
						tc = cs.getConcept(tcuri)
						for rcuri in refConceptURIs : 
							rc = cs.getConcept(rcuri)
							if rc == None : 
								print refConceptURIs
							tc.addRelated(rc)
		
