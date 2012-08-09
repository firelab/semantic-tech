import scraper

testpg = 'http://www.nwcg.gov/pms/pubs/glossary/e.htm'
terms = scraper.parsePage(testpg)

cs = scraper.convertGlossary(testpg, terms)

scraper.rdfout('e.rdf', cs)