%%%%%%%%%%%%%%%% phon.fst %%%%%%%%%%%%%%%%%%

#cons# = bcdfghjklmnprstvwxz
#vowel# = aeiou
#letter# = a-z
#LETTER# = A-Z
#Letter# = #LETTER# #letter#
#infl# = <sein_a_shift><sein_en><haben_regular_t><haben_irregular_t><haben_irregular_same><haben_irregular_u_shift><haben_regular_en>
#sym# = #Letter# #infl#
$cons$ = [#cons#]
$vowel$ = [#vowel#]
$letter$ = [#letter#]
$LETTER$ = [#LETTER#]
$Letter$ = [#Letter#]
$infl$ = [#infl#]
$sym$ = [#sym#]

ALPHABET = [#Letter#] {\ }:{\ } [#infl#]:<>
$delete-POS$ = .*
$delete-POS$
