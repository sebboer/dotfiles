#!/bin/bash 
OUTPUT=$(bt-device -l | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}' | xargs -L 1 bt-device -i | grep "Connected: 1" | wc -l)
echo ' '$OUTPUT
