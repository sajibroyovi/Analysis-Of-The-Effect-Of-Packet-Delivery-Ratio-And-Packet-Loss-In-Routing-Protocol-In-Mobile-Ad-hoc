
set title "Packet Delivery Ratio VS Number of Node"
set xlabel "No. Node"
set ylabel "PDR (packet delivery ratio)"
plot 'pdr.txt' index 0 with linespoints title 'AODV' lc "red" lw 2,\
'' index 1 with linespoints title 'DSDV' lc "green" lw 2,\
'' index 2 with linespoints title 'DSR' lc "blue" lw 2,\
'' index 3 with linespoints title 'OLSR' lc "yellow" lw 2

     

set term png   
set output "pdr.png"
replot

set title "Packet Loss VS Number of Node"
set xlabel "No. Node"
set ylabel "Packet Loss"
plot 'packetdrop.txt' index 0 with linespoints title 'OLSR' lc "red" lw 2,\
'' index 1 with linespoints title 'DSR' lc "green" lw 2,\
'' index 2 with linespoints title 'DSDV' lc "blue" lw 2,\
'' index 3 with linespoints title 'AODV' lc "yellow" lw 2

     

set term png   
set output "packetloss.png"
replot


