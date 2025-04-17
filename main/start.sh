#!/bin/bash

for i in {1..24}; do
    echo "Running iteration $i..."
    java --add-modules=jdk.incubator.vector -XX:+UseG1GC -XX:MaxRAMPercentage=80.0 -jar purpur.jar
    # Optional: Add a delay between iterations if needed
    sleep 1  # Sleep for 1 second (adjust as needed)
done
