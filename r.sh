#!/bin/bash

#sudo timeout 2s /home/probir/Downloads/linux/tools/perf/perf mem -t store record
#sudo /home/probir/Downloads/linux/tools/perf/perf mem  -D report > out

#awk '{if (NR!=1) print $4}' < out > out2
#sh r.sh out2

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Address: $line"
    sudo timeout 1s /home/probir/Downloads/linux/tools/perf/perf record -e mem:$line:rw
done < "$1"
