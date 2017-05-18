set terminal pdf color font "Times-Roman, 20"  
set output "cdf-broadcast-128-write.pdf"
set yrange [0:100]
set ylabel "CDF"

set xlabel "write 128b broadcast CDF"
set xrange [1:100000]

set xtics ( "1us" 1,\
"10us" 10,\
"100us" 100,\
"1ms" 1000,\
"10ms" 10000,\
"100ms" 100000)

set logscale x

set grid y

set key bottom right maxrows 2 samplen 1

plot 'cdf-write-crail-clean-sort' using 1:2 title "crail" with lines lw 4 lc rgb "green",\
'cdf-write-vanilla-clean-sort' using 1:2 title "vanilla" with lines lw 4 lc rgb "red",\
'cdf-network-write' using 1:2 notitle with lines lw 4 lc rgb "grey"
