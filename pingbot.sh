#!/bin/bash
#A network test utility, by Alex Smith (and Holly Mooneyham helped)

do_ping () {
ping $1 -c 1 -I eth0
}

i=0
while true 
  	do
	i++
  	do_ping "8.8.4.4"
#	if i == 5
#		then
#		do_ping "meraki.com"
#		i=0
#	fi
	sleep 1
	done
end
