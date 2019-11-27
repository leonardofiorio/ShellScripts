#!/bin/bash

# This is a script to backup using rsync

echo "Source: "
read source

echo "Destination: "
read destination

echo "Copying from " $source " to " $destination "..."

rsync -avhu --delete --progress $source $destination

echo "Exit"
