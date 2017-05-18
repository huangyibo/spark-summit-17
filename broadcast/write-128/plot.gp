set terminal pdf color font "Times-Roman, 20"  
#set output "vanilla-broadcast-128.pdf"
#set output "crail-broadcast-128.pdf"
set output "broadcast-128-write.pdf"
set xrange [0:10000]
set ylabel "write time"
set xlabel "broadcasts"
set yrange [1:100000]

set ytics ( "1us" 1,\
"10us" 10,\
"100us" 100,\
"1ms" 1000,\
"10ms" 10000,\
"100ms" 100000)

#set xtics ("20k" 20000, "40k" 40000, "60k" 60000, "80k" 80000, "100k" 100000) 
set logscale y

set grid y

set key bottom right maxrows 1 

plot 'write-crail-clean' using 1:2 title "crail" with points pt 7 ps 0.1 lc rgb "green",\
'write-vanilla-clean' using 1:2 title "vanilla" with points pt 7 ps 0.1 lc rgb "red"
