# How to interact with the running testnet

With the binary installed (see [Get_quasar.md](Get_quasar)), you can interact with the chain using remote nodes. 

Example command:

`quasarnoded q bank total --node tcp://$NODE_IP:$PORT`


## Running chains

For testnet v02 we have deployed one RPC / LCD node to allow you to interact with the running chain:node_key.json

= Questnet v02 = 
- Available full nodes: 34.175.250.231
- Persistent peers: check [here](https://github.com/quasar-finance/questnet/blob/main/v02/persistent_peers.txt)
- Seed: None

## How to connect to the full nodes

The API endpoints available are these:

Tendermint RPC:
- IP: 34.175.250.231
- PORT: 26657

LCD:
- IP: 34.175.250.231
- PORT: 1317

Then, the command to hit this node would be:

`quasarnoded q bank total --node tcp://34.175.250.231:26657`

