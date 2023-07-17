cat route_dump.txt | awk '/^([0-9]{1,3}\.){3}[0-9]{1,3}\/[0-9]{1,2}/ {print $1}                    exit 130
     $1 ~ /^BGP\.as_path:$/ {gsub("\tBGP.as_path: ", ""); print $0}     
    $1 ~  /^BGP\.next_hop:/ { print $2}'


    cat route_dump.txt | awk '/^([0-9]{1,3}\.){3}[0-9]{1,3}\/[0-9]{1,2}/ {print $1}                    exit 130
     $1 ~ /^BGP\.as_path:$/ {split ($0, parts, ":");  print parts[2]}
    $1 ~  /^BGP\.next_hop:/ { print $2}'
