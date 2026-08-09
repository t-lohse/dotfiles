#!/bin/env bash
time="$(date '+%H:%M')"
if [[ $time == "13:37" ]]; then
    echo \{\"text\": \"LEET\", \"class\": \"LEET\"\}
else
    echo \{\"text\": \"$time\", \"class\": \"good\"\}
fi
