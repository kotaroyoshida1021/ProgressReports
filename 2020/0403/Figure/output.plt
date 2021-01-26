set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=20 z}"
set ylabel "{/=20 x}"
set yrange [-0.25:0.35]


set size ratio -1
plot "WireImage.txt" using 1:2 with lines linewidth 1.5 title "Wire lines", "RidgeImage.txt" using 1:2 with lines linewidth 1.5 title "Computed joint line"
set terminal pngcairo crop
set output "ObtainedRidgeLinefromz-x.png"

replot

reset

set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=20 z}"
set ylabel "{/=20 y}"

set size ratio -1
plot "WireImage.txt" using 1:3 with lines linewidth 1.5 title "Wire lines", "RidgeImage.txt" using 1:3 with lines linewidth 1.5 title "Computed joint line"
set terminal pngcairo crop
set output "ObtainedRidgeLinefromz-y.png"

replot
reset

set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=20 Arclength of lower wire}"
set ylabel "{/=20 Arclength of joint line}" 

plot "Debug.txt" u 1:2 w l t "Optimized arclength of joint line"
set terminal pngcairo crop
set output "OptimizedArcLength.png"
replot
reset

set xlabel offset 0,0
set ylabel offset 0,0
set encoding utf8
set xlabel "{/=20 Arclength of lower wire}"
set ylabel "{/=20 Curvature}"
set terminal win enhanced

plot "Debug.txt" u 1:6 t "{\316\272}_1:Minimize Potential Energy", "Debug2.txt" u 1:5 t "{\316\272}_1:Minimize Condition of Developable Surface"
set terminal pngcairo crop
set output "kappa_1.png"
replot
reset

set xlabel offset 0,0
set ylabel offset 0,0
#set terminal postscript eps enhanced
set encoding utf8
set xlabel "{/=20 Arc length of lower wire}"
set ylabel "{/=20 Rotational ratios}" 
set terminal win enhanced
plot "Debug.txt" u 1:3 w l t 'Optimized {\317\211}_{\316\276}',"Debug.txt" u 1:4 w l t 'Optimized {\317\211}_{\316\267}'

set terminal pngcairo enhanced crop
set output "OptimizedOmegaVec.png"
replot
reset

set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=20 v[mm]}"
set ylabel "{/=20 w[mm]}" 

plot "rib.txt" using 1:2 with lines linewidth 2 title "Calculated Lower edge","rib.txt" using 3:4 with lines linewidth 2 title "Calculated Upper edge"

set terminal pngcairo crop
set output "ObtainedPattern.png"

replot
