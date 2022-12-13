# How to interact with the running testnet

With the binary installed (see [Get quasar](Get_quasar.md)), you can interact with the chain using remote nodes. 

Example command:

`quasarnoded q bank total --node tcp://$NODE_IP:$PORT`

## How to connect to the full nodes

The API endpoints available are these:

- RPC endpoints:
    - __https://quasar-testnet-rpc.polkachu.com__
    - __https://rpc-office.cosmostation.io/quasar-testnet__
    - __https://questnet.quasar-finance.rhinostake.com__
- REST (LCD) endpoints:
    - __https://quasar-testnet-api.polkachu.com__
    - __https://lcd-office.cosmostation.io/quasar-testnet__

Then, a command to query the bank module would be:

`quasarnoded q bank total --node https://quasar-testnet-rpc.polkachu.com:443`

