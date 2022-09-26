#!/bin/bash

echo "Execution time comparator"

echo "Enter first CMD1"
read CMD1

time1=$(time $CMD1)

echo "Enter second CMD2"
read CMD2

time2=$(time $CMD2)
