#!/bin/bash
# hit [CTRL+C] to stop!
counter=$1
while [[ $counter -gt 0 ]]
do
 echo "Today is $(date)"
 sleep 1
 counter=$(( $counter - 1 ))
done