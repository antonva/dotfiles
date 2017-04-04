    #!/bin/bash
     
    #hacky bash shit to get a frequency of each country connected to the box.
     
    netstat_list=$(netstat -tunp)
    declare -a ip_arr
    declare -a geo_arr
     
    while read p
    do
            ip_arr+=($( echo $p | awk -F '[ :]' '{print $6}'))
    done <<< $netstat_list
     
    for ip in ${ip_arr[@]:1}
    do
            geo_arr+=$(whois $ip | grep "Country" | awk '{print $2}')
    done
     
    sorted_unique_countries=($(echo "${geo_arr[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))
     
    for c in ${sorted_unique_countries[@]}
    do
            printf "%s: %s\n" $c $(echo ${geo_arr[@]} | grep -o $c | wc -l)
    done

