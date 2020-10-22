#!/bin/bash
cpu_idle_percentage=$(top -l 1 | grep -E '^CPU' | cut -d ',' -f 3 | cut -d '%' -f 1 | xargs)
free_memory=$(top -l 1 | grep -E '^Phys' | cut -d ',' -f 2 | cut -d 'u' -f 1 | xargs)
echo "CPU:"$cpu_idle_percentage"%" "RAM:"$free_memory