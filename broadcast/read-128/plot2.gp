set terminal pdf color font "Times-Roman, 20"  
set output "crail-broadcast-128x.pdf"
set xrange [0:10000]
set ylabel "readtime broadcast (uecs)"
set yrange [1:10000]

set logscale y

set grid y

plot './tmp/2-ok' using 1:2 notitle with points pointtype 1,\
'./tmp/3-ok' using 1:2 notitle with points pointtype 2
