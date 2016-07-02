%%%%%%%%%%%%%%% morph.fst %%%%%%%%%%%%%%%%%%
#include "symbols.fst"
#include "inflection.fst"
% Read the lexicon and delete the inflection class on the analysis layer
$lex$ = ($Letter$* <>:[#infl#]) || "verb.lex"
% Applies inflection changes to verbs 
$h_morph$ = $lex$ || $haben_inflection$ || "<phon.a>"
$s_morph$ = $lex$ || $sein_inflection$ || "<phon.a>" 
$d_morph$ = $lex$ || $dict_inflection$ || "<phon.a>"