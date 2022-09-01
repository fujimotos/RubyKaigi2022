#!/bin/sh

for fn in $@; do
  mean=`grep -h count: $fn | sed 's/^.*count://' | awk '{a+=$1} END {print a/NR}'`
  ruby=`grep -h ruby $fn | sed 's/p[0-9]*//;s/dev//' | cut -d ' ' -f 2`
  printf "%-25s%10.0f       %s\n" "$ruby" $mean $fn
done | sort;
