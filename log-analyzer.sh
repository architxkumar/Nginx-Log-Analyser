#!/bin/bash

printf "Top 5 IP addresses with the most requests:\n"
awk '{print $1}' nginx-access.log | sort -t . -n -k 1,1 | uniq -c | sort -rn | head -n 5 > tempfile.txt
awk '{print $2, "-", $1, "requests"}' tempfile.txt

