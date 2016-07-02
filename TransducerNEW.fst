#include "morph.fst"

$sein_verbs$ = {<V><perf>}:{} (\
  ({<1><sg>}:{bin \ } |\
  {<2><sg>}:{bist \ } |\
  {<3><sg>}:{ist \ } |\
  {<1><pl>}:{sind \ } |\
  {<2><pl>}:{seid \ } |\
  {<3><pl>}:{sind \ }) \
  ($s_morph$ | {sein}:{gewesen}))

$haben_verbs$ = {<V><perf>}:{} (\
  ({<1><sg>}:{habe \ } |\
  {<2><sg>}:{hast \ } |\
  {<3><sg>}:{hat \ } |\
  {<1><pl>}:{haben \ } |\
  {<2><pl>}:{habt \ } |\
  {<3><pl>}:{haben \ }) \
  ($h_morph$))

$sein_verbs_konjunktiv$ = {<V><konj2>}:{} (\
  ({<1><sg>}:{wäre \ } |\
  {<2><sg>}:{wärst \ } |\
  {<3><sg>}:{wäre \ } |\
  {<1><pl>}:{wären \ } |\
  {<2><pl>}:{wärt \ } |\
  {<3><pl>}:{wären \ }) \
  ($s_morph$ | {sein}:{gewesen}))

$haben_verbs_konjunktiv$ = {<V><konj2>}:{} (\
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

$futurIIsein$= {<V><futII>} : {} (\
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

$passivPer$= {<V><P><Per><Ind>}: {}(\
  ({<1><sg>}:{bin \ } |\
  {<2><sg>}:{bist \ } |\
  {<3><sg>}:{ist \ } |\
  {<1><pl>}:{sind \ } |\
  {<2><pl>}:{seid \ } |\
  {<3><pl>}:{sind \ }) \
  ($h_morph$ | $s_morph$)) ({} : {\ worden})

$futur$ = {<V><fut>} : {} (\
({<1><sg>}:{werde \ } |\
 {<2><sg>}:{wirst \ } |\
 {<3><sg>}:{wird \ } |\
 {<1><pl>}:{werden \ } |\
 {<2><pl>}:{werdet \ } |\
 {<3><pl>}:{werden \ })\ 
 ($d_morph$))

$konjunktiv_II_present$= $konjunktiv_II$ {<V><Pres><KonII>}: {}(\
({<1><sg>}:{e} |\
 {<2><sg>}:{est} |\
 {<3><sg>}:{e} |\
 {<1><pl>}:{en} |\
 {<2><pl>}:{et} |\
 {<3><pl>}:{en}))

$praeteritum$ = $praeteritum_stems$ {<V><Praet>}:{} (\
({<1><sg>}:{} |\
 {<2><sg>}:{st} |\
 {<3><sg>}:{} |\
 e? {<1><pl>}:{n} |\
 e? {<2><pl>}:{t} |\
 e? {<3><pl>}:{n}))

$sein_verbs$ | $haben_verbs$ | $sein_verbs_konjunktiv$ | $haben_verbs_konjunktiv$ | $futurIIhaben$ | $futurIIsein$ | $passivF$ | $futur$ | $konjunktiv_II_present$ | $praeteritum$ $passivPres$ | $passivPer$