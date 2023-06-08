cat route_dump.txt | awk '/^([0-9]{1,3}\.){3}[0-9]{1,3}\/[0-9]{1,2}/ {print "IP: " $1}
     $1 ~ /^BGP\.as_path:$/ {gsub("BGP.as_path: ", ""); print "AS Path: " $0}
    $1 ~  /^BGP\.next_hop:/ {gsub("BGP.next_hop: ", ""); print "Next Hop: " $0}'