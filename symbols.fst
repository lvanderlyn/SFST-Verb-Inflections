%%%%%%%%%%%%%%% symbols.fst %%%%%%%%%%%%%%%%
#cons# = bcdfghjklmnprstvwxz
#vowel# = aeiou
#letter# = a-z
#LETTER# = A-Z
#Letter# = #LETTER# #letter#
#infl# = <sein_a_shift-per><sein_en-per><haben_regular_t-per><haben_irregular_t-per><haben_irregular_same-per><haben_u_shift_en-per><haben_u_shift_t-per><haben_regular_en-per><sein_total_irregular-per>
#sym# = #Letter# #infl#
$cons$ = [#cons#]
$vowel$ = [#vowel#]
$letter$ = [#letter#]
$LETTER$ = [#LETTER#]
$Letter$ = [#Letter#]
$infl$ = [#infl#]
$sym$ = [#sym#]