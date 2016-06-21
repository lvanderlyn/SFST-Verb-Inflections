$t_ending$ = (([a-z]* te {n}:{t}) | ([a-z]* [^e] {en}:{t}))


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


$sein-verbs$ = {<V><perf>}:{} (\
  ({<1><sg>}:{bin \ } |\
  {<2><sg>}:{bist \ } |\
  {<3><sg>}:{ist \ } |\
  {<1><pl>}:{sind \ } |\
  {<2><pl>}:{seid \ } |\
  {<3><pl>}:{sind \ }) \
  ($sein_regular_en$ | $sein_a_shift$))
   
$haben-verbs$ = {<V><perf>}:{} (\
  ({<1><sg>}:{habe \ } |\
  {<2><sg>}:{hast \ } |\
  {<3><sg>}:{hat \ } |\
  {<1><pl>}:{haben \ } |\
  {<2><pl>}:{habt \ } |\
  {<3><pl>}:{haben \ }) \
  ($haben_regular_t$ | $haben_irregular_t$ | $haben_irregular_same$ |\
   $haben_u_shift$ | $haben_regular_en$))

$futur$ = {<V><fut>} : {} (\
({<1><sg>}:{werde} |\
{<2><sg>}:{wirst} |\
{<3><sg>}:{wird} |\
{<1><pl>}:{werden} |\
{<2><pl>}:{werdet} |\
{<3><pl>}:{werden}) (\ "germanverbs.lex"))

$futurIIhaben$= {<V><futII>} : {} (\
({<1><sg>}: {werde \ })  ($haben_regular_t$ | $haben_irregular_t$ | $haben_irregular_same$ |\
   $haben_u_shift$ | $haben_regular_en$) ({} : {\ haben})) 

$futurIIsein$= {<V><futII>} : {} (\
({<1><sg>}: {werde \ }) ($sein_regular_en$ | $sein_a_shift$) ({} : {\ sein}))

$sein-verbs$ | $haben-verbs$ | $futur$ | $futurIIhaben$ | $futurIIsein$
