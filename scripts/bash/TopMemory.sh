#!/bin/bash

echo "Top 5 Memory-Consuming Processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
