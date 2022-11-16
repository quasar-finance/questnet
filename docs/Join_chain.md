
## Requirements

This guide assumes that you have a node installed with our code compiled from the compatible version: https://github.com/quasar-finance/quasar/

It can be done both in the cloud or in your computer.
Please check [this guide](Get_quasar) for more info.

FYI: Last questnet version uses git tag [v0.0.1-alpha-5](https://github.com/quasar-finance/quasar/tree/v0.0.1-alpha-5)

## How to join the chain as a full node

1. Initialize the node files with:
`quasarnoded init < node_moniker > --chain-id < qsr-internal-questnet-01/02/03/etc >` 

2. Download the genesis file from the corresponding version, e.g:\
https://github.com/quasar-finance/questnet/blob/main/v02/definitive-genesis.json
And replace the one in the appropriate path, e.g.: `~/.quasarnoded/config/genesis.json `

3. Set the `persistent_peers` parameter in the `~/.quasarnoded/config/config.toml` with the ones listed in `persistent_peers.txt` file in the repo (remove the node itself from the list if needed) [example file for questnet v02](https://github.com/quasar-finance/questnet/blob/main/v02/persistent_peers.txt)



4. Start the `quasar` service. If you installed the systemd unit, it should be something like `sudo systemctl start quasard`

This will make the node sync its state with the chain.\
**This will take several hours**

More info here: https://hub.cosmos.network/main/hub-tutorials/join-testnet.html


Extra: You can promote your node to validator following [this guide](Promote_to_validator.md)