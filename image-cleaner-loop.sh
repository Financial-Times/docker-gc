#!/bin/bash
while true
do
    trap break SIGTERM
    echo "Image-cleaner starting."
    ./docker-gc
    echo "Image-cleaner finished."
    sleep ${TIME_BETWEEN_RUNS:=1d}
done
echo "Image-cleaner loop done."
