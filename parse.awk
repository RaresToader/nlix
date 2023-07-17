#BEGIN { record = [] }

/^[^\t]/ { flush(); ip = $1 }
$1 == "BGP.as_path:"{$1 = ""; as_path = $0}
$1 == "BGP.next_hop:" {next_hop = $2}
$1 == "BGP.community:" {
    $1 = ""
    community = "\""
    for (i = 1; i <= NF; i++) {
        community = community $i 
        if (i < NF && i > 1) {
            community = community " "
        }
    }
    community = community "\""
}
END { flush() }



function flush() {
   if (ip) {
       #printf "%s,%s,%s\n", record["ip"], record["next_hop"], record["as_path"]
       #print record["ip"], ",", record["next_hop"], ",", record["as_path"]
       printf "%s,%s,%s,%s\n", ip, next_hop, as_path, community

   }
   # record = []
}
