#!/bin/bash

x=$1
y=$2

sum=$(($x + $y))
difference=$(($x - $y))
product=$(($x * $y))

echo "$sum $difference $product"
