#! /bin/bash

echo "Enter the starting IP address : "
read firstIP

echo "Enter the last octet of the last IP address : "
read lastOctetIP

echo "Enter the port number you want to scan for : "
read port

nmap -sT $firstIP-$lastOctetIP -p $port >/dev/null -oG MySqlScan

cat MySqlScan | grep open > MySqlScanOpen

cat MySqlScanOpen

#src p88
