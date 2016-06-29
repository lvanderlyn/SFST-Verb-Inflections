$t_ending$ = (([a-z]* te {n}:{t}) | ([a-z]* [^e] {en}:{t} | [a-z]* [^e] {en}:{en} ))

%%%%%% Regelmäßig Sein Verben mit "en" %%%%%%
$sein_regular_en$ = (\
  {}:{ge} "sein-en.lex") 


%%%%%% A-shift Sein Verben %%%%%%
$sein_a_shift$ = ( "sein-a-shift.lex" || \
  ([a-z]*{gehen}:{gangen}) |\
  ([a-z]*{stehen}:{standen}))


%%%%% Total Unregelmäßig Sein Verben %%%%%
$sein_total_irregular$ = (\
  {sein}:{gewesen})


%%%%% Regelmäßig Haben Verben mit "t" %%%%%
$haben_regular_t$ = (\
  ({}:{ge} "haben-regular-t.lex") || $t_ending$)


%%%%% Unregelmäßig Haben Verben mit "t" %%%%%
$haben_irregular_t$ = (\
  "haben-irregular-t.lex" || $t_ending$)


%%%%% Unregelmäßig Haben Verben unchanged %%%%%
$haben_irregular_same$ = "haben-irregular.lex"


%%%%% U-shift Unregelmäßig Haben Verben %%%%%
$haben_u_shift$ = (\
  "haben-u-shift.lex" || \
  {}:{ge} [a-z] i:u [a-z]* || \
  $t_ending$)  
  

%%%%% Regelmäßig Haben Verben mit "en" %%%%%
$haben_regular_en$ = (\
  "haben-regular-en.lex" ||\
  (aus | {}:{}| an) \
  {}:{ge} [a-z]*) 


$sein-verbs$ = {<V><Akt><perf><Ind>}:{} (\
  ({<1><sg>}:{bin \ } |\
  {<2><sg>}:{bist \ } |\
  {<3><sg>}:{ist \ } |\
  {<1><pl>}:{sind \ } |\
  {<2><pl>}:{seid \ } |\
  {<3><pl>}:{sind \ }) \
  ($sein_regular_en$ | $sein_a_shift$ |  $sein_total_irregular$))
   
$haben-verbs$ = {<V><Akt><perf><Ind>}:{} (\
=======
  ($sein_regular_en$ | $sein_a_shift$ | $sein_total_irregular$))
   
$haben-verbs$ = {<V><perf>}:{} (\
>>>>>>> 5506d243e88c7a15e46a85b8febd09e09c79e820
  ({<1><sg>}:{habe \ } |\
  {<2><sg>}:{hast \ } |\
  {<3><sg>}:{hat \ } |\
  {<1><pl>}:{haben \ } |\
  {<2><pl>}:{habt \ } |\
  {<3><pl>}:{haben \ }) \
  ($haben_regular_t$ | $haben_irregular_t$ | $haben_irregular_same$ |\
   $haben_u_shift$ | $haben_regular_en$))

<<<<<<< HEAD
$futur$ = {<V><Akt><fut><Ind>} : {} (\
=======
$sein-verbs-konjunktiv$ = {<V><konj2>}:{} (\
  ({<1><sg>}:{wäre \ } |\
  {<2><sg>}:{wärst \ } |\
  {<3><sg>}:{wäre \ } |\
  {<1><pl>}:{wären \ } |\
  {<2><pl>}:{wärt \ } |\
  {<3><pl>}:{wären \ }) \
  ($sein_regular_en$ | $sein_a_shift$ | $sein_total_irregular$))

$haben-verbs-konjunktiv$ = {<V><konj2>}:{} (\
  ({<1><sg>}:{hätte \ } |\
  {<2><sg>}:{hättest \ } |\
  {<3><sg>}:{hätte \ } |\
  {<1><pl>}:{hätten \ } |\
  {<2><pl>}:{hättet \ } |\
  {<3><pl>}:{hätten \ }) \
  ($haben_regular_t$ | $haben_irregular_t$ | $haben_irregular_same$ |\
   $haben_u_shift$ | $haben_regular_en$))

$futur$ = {<V><fut>} : {} (\
>>>>>>> 5506d243e88c7a15e46a85b8febd09e09c79e820
({<1><sg>}:{werde} |\
{<2><sg>}:{wirst} |\
{<3><sg>}:{wird} |\
{<1><pl>}:{werden} |\
{<2><pl>}:{werdet} |\
<<<<<<< HEAD
{<3><pl>}:{werden}) (\ "25Verben.lex"))

$futurIIhaben$= {<V><Akt><futII><Ind>} : {} (\
=======
{<3><pl>}:{werden}) (\ "germanverbs.lex"))

$futurIIhaben$= {<V><futII>} : {} (\
>>>>>>> 5506d243e88c7a15e46a85b8febd09e09c79e820
({<1><sg>}: {werde \ } |\
 {<2><sg>}: {wirst \ } |\
 {<3><sg>}: {wird \  } |\
 {<1><pl>}: {werden \ } |\
 {<2><pl>}: {werden \ } |\
 {<3><pl>}: {werden \ }) \
 ($haben_regular_t$ | $haben_irregular_t$ | $haben_irregular_same$ |\
  $haben_u_shift$ | $haben_regular_en$) ({} : {\ haben})) 

<<<<<<< HEAD
$futurIIsein$= {<V><Akt><futII><Ind>} : {} (\
=======
$futurIIsein$= {<V><futII>} : {} (\
>>>>>>> 5506d243e88c7a15e46a85b8febd09e09c79e820
({<1><sg>}: {werde \ } |\
 {<2><sg>}: {wirst \ } |\
 {<3><sg>}: {wird \  } |\
 {<1><pl>}: {werden \ } |\
 {<2><pl>}: {werden \ } |\
<<<<<<< HEAD
 {<3><pl>}: {werden \ }) ($sein_regular_en$ | $sein_a_shift$) ({} : {\ sein}))

$PassivF$= {<V><Pas><Fut><Ind>}: {}(\
=======
 {<3><pl>}: {werden \ }) ($sein_regular_en$ | $sein_a_shift$ | $sein_total_irregular$) \ 
 ({} : {\ sein}))

$PassivF$= {<V><P><Fut><Ind>}: {}(\
>>>>>>> 5506d243e88c7a15e46a85b8febd09e09c79e820
({<1><sg>}:{werde} |\
 {<2><sg>}:{wirst} |\
 {<3><sg>}:{wird} |\
 {<1><pl>}:{werden} |\
 {<2><pl>}:{werden} |\
 {<3><pl>}:{werden})\ ($haben_regular_t$ | $haben_irregular_t$ | $haben_irregular_same$ |\
   $haben_u_shift$ | $haben_regular_en$ | $sein_regular_en$ | $sein_a_shift$)) ({} : {\ werden})

<<<<<<< HEAD
$KII$= ("25Verben.lex" || {kommen}:{käm} | {sein}:{wär} | {laufen} : {lief} | {vergehen}:{verging} | {müssen}:{müsst} | {wissen} : {wüsst} | {finden} : {fänd} | {denken} : {dächt} | {glauben} : {glaubt} | {zeigen} : {zeigt} | {leben} : {lebt} | {kennen} : {kennt} | {arbeiten} : {arbeitet} | {bestehen} : {bestünd} | {beginnen} : {begänn} | {ziehen} : {zög} | {entstehen} : {entstünd} | {legen}  : {legt} | {tragen} : {trüg} | {erwarten} : {erwartet} | {fühlen} : {fühlt} |{ergeben} : {ergäb})
$KIIP$= $KII$ {<V><Akt><Pres><KonII>}: {}(\
=======
$KII$= ("25Verben.txt" || {kommen}:{käm} | {sein}:{wär} | {laufen} : {lief} | {vergehen}:{verging} | {müssen}:{müsst} | {wissen} : {wüsst} | {finden} : {fänd} | {denken} : {dächt} | {glauben} : {glaubt} | {zeigen} : {zeigt} | {leben} : {lebt} | {kennen} : {kennt} | {arbeiten} : {arbeitet} | {bestehen} : {bestünd} | {beginnen} : {begänn} | {ziehen} : {zög} | {entstehen} : {bntstünd} | {legen}  : {legt} | {tragen} : {trüg} | {erwarten} : {erwartet} | {fühlen} : {fühlt} |{ergeben} : {ergäb})
$KIIP$= $KII$ {<V><Pres><KonII>}: {}(\
>>>>>>> 5506d243e88c7a15e46a85b8febd09e09c79e820
({<1><sg>}:{e} |\
 {<2><sg>}:{est} |\
 {<3><sg>}:{e} |\
 {<1><pl>}:{en} |\
 {<2><pl>}:{et} |\
 {<3><pl>}:{en}))
<<<<<<< HEAD
 
 $P$= ("25Verben.lex" || [a-z]* {en} : {})
 
 $Pres$= $P$ {<V><Akt><Pres><Ind>} : {} (\ 
 ({<1><sg>} : {e} ))

$sein-verbs$ | $haben-verbs$ | $futur$ | $futurIIhaben$ | $futurIIsein$ | $PassivF$ | $KIIP$  | $Pres$
=======

$sein-verbs$ | $haben-verbs$ | $futur$ | $futurIIhaben$ | $futurIIsein$ | \
$PassivF$ | $KIIP$ | $sein-verbs-konjunktiv$| $haben-verbs-konjunktiv$
>>>>>>> 5506d243e88c7a15e46a85b8febd09e09c79e820
