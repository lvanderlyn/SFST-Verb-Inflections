#include "morph.fst"

$seinVerben$ = {<V><Akt><perf><Ind>}:{} (\
 ({<1><sg>}:{bin \ } |\
  {<2><sg>}:{bist \ } |\
  {<3><sg>}:{ist \ } |\
  {<1><pl>}:{sind \ } |\
  {<2><pl>}:{seid \ } |\
  {<3><pl>}:{sind \ }) \
  ($s_morph$ | {sein}:{gewesen}))

$habenVerben$ = {<V><Akt><perf><Ind>}:{} (\
 ({<1><sg>}:{habe \ } |\
  {<2><sg>}:{hast \ } |\
  {<3><sg>}:{hat \ } |\
  {<1><pl>}:{haben \ } |\
  {<2><pl>}:{habt \ } |\
  {<3><pl>}:{haben \ }) \
  ($h_morph$))

$seinVerbenKonjunktiv$ = {<V><konj2>}:{} (\
 ({<1><sg>}:{wäre \ } |\
  {<2><sg>}:{wärst \ } |\
  {<3><sg>}:{wäre \ } |\
  {<1><pl>}:{wären \ } |\
  {<2><pl>}:{wärt \ } |\
  {<3><pl>}:{wären \ }) \
  ($s_morph$ | {sein}:{gewesen}))

$habenVerbenKonjunktiv$ = {<V><konj2>}:{} (\
 ({<1><sg>}:{hätte \ } |\
  {<2><sg>}:{hättest \ } |\
  {<3><sg>}:{hätte \ } |\
  {<1><pl>}:{hätten \ } |\
  {<2><pl>}:{hättet \ } |\
  {<3><pl>}:{hätten \ }) \
  ($h_morph$))

$futurIIhaben$= {<V><futII>} : {} (\
 ({<1><sg>}: {werde \ } |\
  {<2><sg>}: {wirst \ } |\
  {<3><sg>}: {wird \  } |\
  {<1><pl>}: {werden \ } |\
  {<2><pl>}: {werdet \ } |\
  {<3><pl>}: {werden \ }) \
  ($h_morph$) ({} : {\ haben})) 

$futurIIsein$= {<V><Akt><futII><Ind>} : {} (\
 ({<1><sg>}: {werde \ } |\
  {<2><sg>}: {wirst \ } |\
  {<3><sg>}: {wird \  } |\
  {<1><pl>}: {werden \ } |\
  {<2><pl>}: {werden \ } |\
  {<3><pl>}: {werden \ }) ($s_morph$ | {sein}:{gewesen}) \ 
  ({} : {\ sein}))

$passivF$= {<V><P><Fut><Ind>}: {}(\
 ({<1><sg>}:{werde \ } |\
  {<2><sg>}:{wirst \ } |\
  {<3><sg>}:{wird \ } |\
  {<1><pl>}:{werden \ } |\
  {<2><pl>}:{werdet \ } |\
  {<3><pl>}:{werden \ })\ 
  ($h_morph$ | $s_morph$)) ({} : {\ werden})

$passivPres$= {<V><P><Pres><Ind>}: {}(\
 ({<1><sg>}:{werde \ } |\
  {<2><sg>}:{wirst \ } |\
  {<3><sg>}:{wird \ } |\
  {<1><pl>}:{werden \ } |\
  {<2><pl>}:{werdet \ } |\
  {<3><pl>}:{werden \ })\ 
  ($h_morph$ | $s_morph$))

$passivPer$ = {<V><P><Per><Ind>}: {}(\
 ({<1><sg>}:{bin \ } |\
  {<2><sg>}:{bist \ } |\
  {<3><sg>}:{ist \ } |\
  {<1><pl>}:{sind \ } |\
  {<2><pl>}:{seid \ } |\
  {<3><pl>}:{sind \ }) \
  ($h_morph$ | $s_morph$)) ({} : {\ worden})

$passivPrae$ = {<V><P><Prae><Ind>}: {}(\
 ({<1><sg>}:{wurde \ } |\
  {<2><sg>}:{wurdest \ } |\
  {<3><sg>}:{wurde \ } |\
  {<1><pl>}:{wurden \ } |\
  {<2><pl>}:{wurdet \ } |\
  {<3><pl>}:{wurden \ })\ 
  ($h_morph$ | $s_morph$))

$futur$ = {<V><Akt><fut><Ind>}:{} (\
 ({<1><sg>}:{werde \ } |\
  {<2><sg>}:{wirst \ } |\
  {<3><sg>}:{wird \ } |\
  {<1><pl>}:{werden \ } |\
  {<2><pl>}:{werdet \ } |\
  {<3><pl>}:{werden \ })\ 
  ($d_morph$) {}:{en})

$konjunktiv_II_present$ = ($konjunktiv_II$ | $k_morph$) {<V><Pres><KonII>}: {}(\
 ({<1><sg>}:{e} |\
  {<2><sg>}:{est} |\
  {<3><sg>}:{e} |\
  {<1><pl>}:{en} |\
  {<2><pl>}:{et} |\
  {<3><pl>}:{en}))

$praesens$ = $d_morph$ {<V><Akt><pres><Ind>}:{}(\
 ({<1><sg>}:{e} |\
  {<2><sg>}:{tst} |\
  {<3><sg>}:{t} |\
  {<1><pl>}:{en} |\
  {<2><pl>}:{t} |\
  {<3><pl>}:{en}))

$praeteritum$ = ($praeteritum_stems$ | $k_morph$ {}:{e}) {<V><Praet>}:{} (\
 ({<1><sg>}:{} |\
  {<2><sg>}:{st} |\
  {<3><sg>}:{} |\
  e? {<1><pl>}:{n} |\
  e? {<2><pl>}:{t} |\
  e? {<3><pl>}:{n}))

$seinVerben$ | $habenVerben$ | $seinVerbenKonjunktiv$ | $habenVerbenKonjunktiv$ | $futurIIhaben$ | $futurIIsein$ | $passivF$ | $futur$ | $konjunktiv_II_present$ | $praeteritum$ | $passivPres$ | $passivPer$ | $passivPrae$ | $praesens$
