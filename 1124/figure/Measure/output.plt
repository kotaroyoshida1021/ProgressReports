set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=20 z}"
set ylabel "{/=20 x}"
set yrange [-0.3:0.3]


set size ratio -1
plot "WireImage.txt" using 1:2 with lines linewidth 1.5 title "Wire lines", "RidgeImage.txt" using 1:2 with lines linewidth 1.0 lc "grey60" title "Computed cup shape","Input.txt" using 1:2 title "Data points"
set terminal pngcairo crop size 750, 750 font ",18"
set output "ObtainedRidgeLinefromz-x.png"

replot

reset

set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=20 z}"
set ylabel "{/=20 y}"
set yrange [0.0:0.45]

set size ratio -1
plot "WireImage.txt" using 1:3 with lines linewidth 1.5 title "Wire lines", "RidgeImage.txt" using 1:3 with lines linewidth 1.0 lc "grey60" title "Computed cup shape","Input.txt" using 1:3 title "Data points"
set terminal pngcairo crop
set output "ObtainedRidgeLinefromz-y.png"

replot
reset

set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=20 x}"
set ylabel "{/=20 y}"
set yrange [0.0:0.45]

set size ratio -1
plot "WireImage.txt" using 2:3 with lines linewidth 1.5 title "Wire lines", "RidgeImage.txt" using 2:3 with lines linewidth 1.0 lc "grey60" title "Computed cup shape","Input.txt" using 2:3 title "Data points"
set terminal pngcairo crop
set output "ObtainedRidgeLinefromx-y.png"

replot
reset

#set xlabel offset 0,0
#set ylabel offset 0,0
#set terminal postscript eps enhanced
#set encoding utf8
#set xlabel "{/=20 Arc length of lower wire}"
#set ylabel "{/=20 Rotational ratios}" 
#set terminal win enhanced
#plot "Debug.txt" u 1:3 w l t 'Optimized {\317\211}_{\316\276}',"Debug.txt" u 1:4 w l t 'Optimized {\317\211}_{\316\267}'

#set terminal pngcairo enhanced crop
#set output "OptimizedOmegaVec.png"
#replot
#reset

set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=20 v}"
set ylabel "{/=20 w}" 
set size ratio -1
set yrange [-0.15:0.35]
plot "Rib_LR.txt" using 1:2 with lines linewidth 2 title "Calculated Lower edge","Rib_LR.txt" using 3:4 with lines linewidth 2 title "Calculated Upper edge"

set terminal pngcairo crop
set output "ObtainedPatternL.png"

replot
reset

set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=20 v}"
set ylabel "{/=20 w}" 
set size ratio -1
set yrange [-0.05:0.55]
plot "Rib_UR.txt" using 1:2 with lines linewidth 2 title "Calculated Lower edge","Rib_UR.txt" using 3:4 with lines linewidth 2 title "Calculated Upper edge"

set terminal pngcairo crop
set output "ObtainedPatternU.png"

replot
reset


#set xlabel offset 0,0
#set ylabel offset 0,0
#set xlabel "{/=20 v}"
#set ylabel "{/=20 w}" 
#set size ratio -1
#plot "WireImage.txt" using 1:2 with lines linewidth 1.5 title "Wire lines", "rib.txt" using 1:2 with lines linewidth 2 title "Calculated Lower edge","rib.txt" using 3:4 with lines linewidth 2 title "Calculated Upper edge"

#set terminal pngcairo crop
#set output "ObtainedPatternANDwire.png"

#replot
