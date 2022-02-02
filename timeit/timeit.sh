#!/bin/bash

echo "$@: started at: $(date)" >> /var/tmp/timeit.txt; $@; echo "ended at: $(date)" >> /var/tmp/timeit.txt

count=$(cat /var/tmp/timeit.txt | wc -l)
if [ $count -gt 100000 ]
then
        rm -rf /var/tmp/timeit.txt
fi
