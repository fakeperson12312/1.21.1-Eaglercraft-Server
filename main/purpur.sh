#!/bin/bash

while [ true ]; do
    java --add-modules=jdk.incubator.vector -Xms8096M -Xmx8096M -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar purpur.jar --nogui
    sleep 5
    echo Server restarting...
    echo Press CTRL + C to stop.
done