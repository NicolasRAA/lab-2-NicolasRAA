#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <IPv4 dirección>"
    exit 1
fi

ip=$1

IFS='.' read -r oct1 oct2 oct3 oct4 <<< "$ip"

bin_oct1=$(printf "%08d" "$(bc <<< "obase=2; $oct1")")
bin_oct2=$(printf "%08d" "$(bc <<< "obase=2; $oct2")")
bin_oct3=$(printf "%08d" "$(bc <<< "obase=2; $oct3")")
bin_oct4=$(printf "%08d" "$(bc <<< "obase=2; $oct4")")

echo "$bin_oct1.$bin_oct2.$bin_oct3.$bin_oct4"
