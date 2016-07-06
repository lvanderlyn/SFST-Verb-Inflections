%%%%%%%%%%%%%% inflection.fst %%%%%%%%%%%%%%
#include "symbols.fst"

$t_ending$ = (($Letter$* t {}:{et}) | ($Letter$* [^t] {}:{t})) $infl$+

%%%%%% Regelmäßig Sein Verben mit "en" %%%%%%
$sein_regular_en-per$ = (\
  {}:{ge} $Letter$* {}:{en} <sein_en-per>)

%%%%%% A-shift Sein Verben %%%%%%
$sein_a_shift-per$ =  $Letter$*(\
  {geh}:{gangen} |\
  {steh}:{standen}) <sein_a_shift-per> 

%%%%% Regelmäßig Haben Verben mit "t" %%%%%
$haben_regular_t-per$ = (\
  ({}:{ge} $Letter$* <haben_regular_t-per>) || $t_ending$)

%%%%% Unregelmäßig Haben Verben mit "t" %%%%%
$haben_irregular_t-per$ = (\
  $Letter$* <haben_irregular_t-per> || $t_ending$)

%%%%% Unregelmäßig Haben Verben unchanged %%%%%
$haben_irregular_same-per$ = $Letter$* {}:{en} <haben_irregular_same-per>

%%%%% Regelmäßig Haben Verben mit "en" %%%%%
$haben_regular_en-per$ = (\
  (aus | {}:{}| an) \
  {}:{ge} [a-z]*) {}:{en} <haben_regular_en-per>

%%%%% U-shift Unregelmäßig Haben Verben %%%%%
$haben_u_shift-per$ = (\
  ({}:{ge} $Letter$ i:u $Letter$* {}:{t} <haben_u_shift_t-per>) |\
  ({}:{ge} $Letter$ i:u $Letter$* {}:{en} <haben_u_shift_en-per>))  

%%%%% dictionary form for futur %%%%%%
$dict_form$ = $Letter$* $infl$+

$t_kon$ = $Letter$* (<haben_regular_t-per> | <haben_irregular_t-per>) || $t_ending$


$konjunktiv_II$= ({kommen}:{käm} | {sein}:{wär} | {laufen}:{lief} | {vergehen}:{verging} | {müssen}:{müsst} | {wissen}:{wüsst} | {finden}:{fänd} | {denken}:{dächt} | {kennen}:{kennt} | {bestehen}:{bestünd} | {beginnen}:{begänn} | {ziehen}:{zög} | {entstehen}:{entstünd} | {tragen}:{trüg} | {ergeben}:{ergäb} | {haben}:{hätt} | {gehen}:{ging} | {stehen}:{stünd} | {fahren}:{führ})



%%%%%%%%%%%%%% Verb changes for präteritum forms %%%%%%%%%%%%%%%%%
$praeteritum_stems$ = ({kommen}:{kam} | {sein}:{war} | {laufen}:{lief} | {vergehen}:{verging} | {müssen}:{musste} | {wissen}:{wusste} | {finden}:{fand} | {denken}:{dachte} | {kennen}:{kannte} |  {bestehen}:{bestand} | {beginnen}:{begann} | {ziehen}:{zog} | {entstehen}:{entstand} | {tragen}:{trug} | {ergeben}:{ergab} | {haben}:{hatte} | {gehen}:{ging} | {stehen}:{stand} | {fahren}:{fuhr})



$sein_inflection$ = ($sein_a_shift-per$ | $sein_regular_en-per$)  
$haben_inflection$ = ($haben_regular_t-per$ | $haben_irregular_t-per$ | $haben_irregular_same-per$ | $haben_u_shift-per$ | $haben_regular_en-per$ | $haben_u_shift-per$) 
$dict_inflection$ =  $dict_form$