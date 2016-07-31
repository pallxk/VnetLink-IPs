#!/bin/sh

# Convert hostname to IP addresses

basedir=`dirname "$0"`
server_list_filename="server-list.txt"
ip_list_filename="ip-list.txt"

for server_list in `echo "$basedir/*/$server_list_filename"`; do
	ip_list="$(dirname "$server_list")/$ip_list_filename"
	while read server || [ "$server" ]; do
		# Output empty line and comment line as is
		if [ -z "$server" ] || [ "${server:0:1}" = "#" ]; then
			echo "$server"
			continue
		fi

		# Output hostname as a comment
		echo "# $server"
		# Output sorted IP addresses of the hostname
		dig "$server" +short | sort -V
	done < "$server_list" > "$ip_list"
done
