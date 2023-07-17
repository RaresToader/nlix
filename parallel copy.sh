sed 1d route_dump.txt \
| parallel --pipe --block 5M awk -f parse.awk \
 > parsed2.csv 


