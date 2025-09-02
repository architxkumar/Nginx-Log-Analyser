#!/bin/bash

printf "Top 5 IP addresses with the most requests:\n"
awk '{print $1}' nginx-access.log | sort -t . -n -k 1,1 | uniq -c | sort -rn | head -n 5 > tempfile.txt
awk '{print $2, "-", $1, "requests"}' tempfile.txt

printf "\nTop 5 most requested paths:\n"
awk '{print $7}' nginx-access.log | sort | uniq -c | sort -rn | head -n 5 > tempfile.txt
awk '{print $2, "-", $1, "requests"}' tempfile.txt

printf "\nTop 5 response status codes:\n"
awk '{print $9}' nginx-access.log | sort | uniq -c | sort -rn | head -n 5 > tempfile.txt
awk '{print $2, "-", $1, "requests"}' tempfile.txt

printf "\nTop 5 user agents:\n"
awk '{print $12}' nginx-access.log | sort | uniq -c | sort -rn | head -n 5 > tempfile.txt
awk '{print $2, "-", $1, "requests"}' tempfile.txt

rm -f tempfile.txt