#!/bin/bash

set -ef

PEERS_FILE="../persistent_peers.txt"


if [ "$#" -ne 1 ]; then
    echo "Pass the tendermind node as parameter and it will build the persistent_peers parameter for you"
    exit 1
fi

FILTERED_PEERS=$(sed "/^$1/d" "$PEERS_FILE" | paste -sd,)
echo "persistent_peers = \"$FILTERED_PEERS\""

