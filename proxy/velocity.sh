#!/bin/bash

while [ true ]; do
    java -Deaglerxvelocity.stfu=true -Xms2048M -Xmx2048M -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar velocity.jar
    sleep 5
    echo Server restarting...
    echo Press CTRL + C to stop.
done
