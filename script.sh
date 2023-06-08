time cat route_dump.txt 

| awk '/^([0-9]{1,3}\.){3}[0-9]{1,3}\/[0-9]{1,2}/ {print "IP: " $1}
     $1 ~ /^BGP\.as_path:$/ {gsub("BGP.as_path: ", ""); print "AS Path: " $0}
     /^BGP\.next_hop:/ {gsub("BGP.next_hop: ", ""); print "Next Hop: " $0}'



10.9.3/2,234 343 5342 434, 142.23.4.4/24