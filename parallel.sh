cat route_dump.txt | parallel --pipe -k awk -f parse.awk > /dev/null
