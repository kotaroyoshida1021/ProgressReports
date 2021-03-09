set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=30 z}"
set ylabel "{/=30 x}"
#et yrange [-0.35:0.15]
set key font "Arial,20"

#set size ratio -1
plot "RidgeLine.txt" using 1:2 with lines linewidth 1.0 title "Computed cup shape","AmendLine.txt" using 1:2 with lines linewidth 1.0, "WireImage.txt" u 1:2 w l
#plot "RidgeImage.txt" using 1:2 with lines linewidth 1.0 lc "grey70" title "Computed cup shape","test2.txt" using 3:1 lc "black" title "Data points"
#set terminal epscairo crop
#set terminal postscript eps
#set output "ObtainedRidgeLinefromz-x.eps"
set terminal pngcairo enhanced crop
set output "ObtainedRidgeLinefromz-x.png"


replot

reset

set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=30 z}"
set ylabel "{/=30 y}"
set key font "Arial,20"

#set size ratio -1

plot "RidgeLine.txt" using 1:3 with lines linewidth 1.0 title "Computed cup shape","AmendLine.txt" using 1:3 with lines linewidth 1.0, "WireImage.txt" u 1:3 w l
#plot "RidgeImage.txt" using 1:3 with lines linewidth 1.0 lc "grey70" title "Computed cup shape","test2.txt" using 3:2 lc "black" title "Data points"
#set terminal postscript eps
#set output "ObtainedRidgeLinefromz-y.eps"
set terminal pngcairo enhanced crop
set output "ObtainedRidgeLinefromz-y.png"

replot
reset

set xlabel offset 0,0
set ylabel offset 0,0
set key font "Arial,20"

#set size ratio -1

plot "Pattern.txt" using 1:2 with lines linewidth 1.0 title "Computed cup shape","Pattern.txt" using 3:4 with lines linewidth 1.0
#plot "RidgeImage.txt" using 1:3 with lines linewidth 1.0 lc "grey70" title "Computed cup shape","test2.txt" using 3:2 lc "black" title "Data points"
#set terminal postscript eps
#set output "ObtainedRidgeLinefromz-y.eps"
set terminal pngcairo enhanced crop
set output "Patt.png"

replot
reset
