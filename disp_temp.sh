#!/usr/bin/env bash
# Petit script tout simple pour afficher la température en continu
# zf170704.1412
# source: 

echo -------- start 

watch -n 1 'cat /sys/class/thermal/thermal_zone0/temp'

