#!/bin/bash

node=R5

if [ "$#" -eq 1 ]; then
    echo "Using node:"$1
    node=$1
fi

echo "Connecting to node:"$node

# Script to connect to a router's bgpd shell.
router=${1:-$node}
echo "Connecting to $router shell"

sudo python run.py --node $router --cmd "telnet localhost bgpd"
