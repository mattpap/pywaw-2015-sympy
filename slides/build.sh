#!/bin/bash

while true; do
    inotifywait -q -e modify $(make target)
    echo ">>> Building ..."
    make
done
