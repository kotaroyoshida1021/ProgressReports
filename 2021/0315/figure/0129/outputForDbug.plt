set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=30 x}"
set ylabel "{/=30 y}"
set size ratio -1
plot "surface.txt" using 1:2 with lines linewidth 1.5 title "optimized surface", "wire.txt" using 1:2 with lines linewidth 1.5 title "wire line"
set terminal pngcairo crop
set output "AlignWire_xyview2.png"

replot

reset


set xlabel offset 0,0
set ylabel offset 0,0
set xlabel "{/=30 x}"
set ylabel "{/=30 z}"
set size ratio -1
plot "surface.txt" using 1:3 with lines linewidth 1.5 title "optimized surface", "wire.txt" using 1:3 with lines linewidth 1.5 title "wire line"
set terminal pngcairo crop
set output "AlignWire_xzview2.png"

replot

reset


set xlabel offset 0,0
set ylabel offset 0,0

set size ratio -1
plot "functions.txt" using 1:2 with lines linewidth 1.5 title "beta"
set terminal pngcairo crop
set output "beta.png"

replot

reset

set xlabel offset 0,0
set ylabel offset 0,0

set size ratio -1
plot "functions.txt" using 1:3 with lines linewidth 1.5 title "omg_eta"
set terminal pngcairo crop
set output "omgEta.png"

replot

reset