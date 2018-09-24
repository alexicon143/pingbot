#!/bin/bash
#A network test utility, by Alex Smith (and Holly Mooneyham helped)

do_ping () {
ping $1 -c 1 -I eth0
}
do_curl () {
curl $1 > /dev/null
}

i=0
while true 
  	do
	((i++))
  	do_ping "8.8.4.4"
	if ((i == 5))
		then
		do_ping "meraki.com"
		do_curl "meraki.com"
	fi
	if ((i == 5))
		then
		do_ping "microsoft.com"
		do_curl "microsoft.com"
		i=0
	fi
	sleep 1
	done
end
