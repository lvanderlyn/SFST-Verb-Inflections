%%%%%%%%%%%%%% inflection.fst %%%%%%%%%%%%%%
#include "symbols.fst"

$t_ending$ = (([a-z]* te {n}:{t}) | ([a-z]* [^e] {en}:{t} | [a-z]* [^e] {en}:{en} )) $infl$*

%%%%%% Regelmäßig Sein Verben mit "en" %%%%%%
$sein_regular_en$ = (\
  {}:{ge} $Letter$* <sein_en>)

%%%%%% A-shift Sein Verben %%%%%%
$sein_a_shift$ =  $Letter$*(\
  {gehen}:{gangen} |\
  {stehen}:{standen}) <sein_a_shift> 

%%%%% Regelmäßig Haben Verben mit "t" %%%%%
$haben_regular_t$ = (\
  ({}:{ge} $Letter$* <haben_regular_t>) || $t_ending$)

%%%%% Unregelmäßig Haben Verben mit "t" %%%%%
$haben_irregular_t$ = (\
  $Letter$* <haben_irregular_t> || $t_ending$)

%%%%% Unregelmäßig Haben Verben unchanged %%%%%
$haben_irregular_same$ = $Letter$* <haben_irregular_same>

%%%%% U-shift Unregelmäßig Haben Verben %%%%%
$haben_u_shift$ = (\
  {}:{ge} $Letter$ i:u [a-z]* ({en}:{t} | {n}:{et} | en) <haben_u_shift>) 

%%%%% Regelmäßig Haben Verben mit "en" %%%%%
$haben_regular_en$ = (\
  (aus | {}:{}| an) \
  {}:{ge} [a-z]*) <haben_regular_en>

%%%%% dictionary form for futur %%%%%%
$dict_form$ = $Letter$* $infl$*


$konjunktiv_II$= ({kommen}:{käm} | {sein}:{wär} | {laufen}:{lief} | {vergehen}:{verging} | {müssen}:{müsst} | {wissen}:{wüsst} | {finden}:{fänd} | {denken}:{dächt} | {glauben}:{glaubt} | {zeigen}:{zeigt} | {leben}:{lebt} | {kennen}:{kennt} | {arbeiten}:{arbeitet} | {bestehen}:{bestünd} | {beginnen}:{begänn} | {ziehen}:{zög} | {entstehen}:{entstünd} | {legen}:{legt} | {tragen}:{trüg} | {erwarten}:{erwartet} | {fühlen}:{fühlt} |{ergeben}:{ergäb} | {haben}:{hätt} | {machen}:{macht} | {gehen}:{ging} | {stehen}:{stünd} | {fahren}:{führ} | {meinien}:{meint} | {fragen}:{fragt} | {spielen}:{spielt} | {vertrauen}:{vertruat})



%%%%%%%%%%%%%% Verb changes for präteritum forms %%%%%%%%%%%%%%%%%
$praeteritum_stems$ = ({kommen}:{kam} | {sein}:{war} | {laufen}:{lief} | {vergehen}:{verging} | {müssen}:{musste} | {wissen}:{wusste} | {finden}:{fand} | {denken}:{dachte} | {glauben}:{glaubte} | {zeigen}:{zeigte} | {leben}:{lebte} | {kennen}:{kannte} | {arbeiten}:{arbeitete} | {bestehen}:{bestand} | {beginnen}:{begann} | {ziehen}:{zog} | {entstehen}:{entstand} | {legen}:{legte} | {tragen}:{trug} | {erwarten}:{erwartete} | {fühlen}:{fühlte} | {ergeben}:{ergab} | {haben}:{hatte} | {machen}:{machte} | {sagen}:{sagten} | {gehen}:{ging} | {stehen}:{stand} | {fahren}:{fuhr} | {meinen}:{meinte} | {fragen}:{fragte} | {spielen}:{spielte} | {vertrauen}:{vertaute})



$sein_inflection$ = ($sein_a_shift$ | $sein_regular_en$)  
$haben_inflection$ = ($haben_regular_t$ | $haben_irregular_t$ | $haben_irregular_same$ | $haben_u_shift$ | $haben_regular_en$) 
$dict_inflection$ =  $dict_form$