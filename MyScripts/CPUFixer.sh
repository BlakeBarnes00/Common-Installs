#!/bin/sh
# This script is to fix the governer of the CPU

echo "performance | Run CPU at maximum frequency."
echo "powersave   | Run CPU at minimum frequency."
echo "userspace   | Run CPU at user specified frequencies."
echo "ondemand    | Scales the freq dynamically according to current load."
echo "conservative| Scales the freq dynamically according to current load."
echo "            | than on demand."
echo "schedutil   | Scheduler-driven CPU frequency selection."
echo ""
echo "More info: https://wiki.archlinux.org/index.php/CPU_frequency_scaling"

# Change the governer to the argument
sudo cpufreq-set -r -g $1
