Run instructions: compile phon.fst and then compile TransducerNew.fst

Information about code:
- verbs.lex contains the verbs we can analyze in their infinitiv stem form with inflection tags
- inflection.fst contains the transducers for inflecting the stems, filtering by appropriate rule
- morph.fst controlls adding and removing the inflection tags so users don't need to interface with that process
- phon.fst contains the actual code to add tags
- symbols.fst contains commonly used variable definitions
- TransducerNew.fst performs the actual analysis and appends the tags the user will see

