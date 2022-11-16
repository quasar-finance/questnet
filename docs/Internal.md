# Launching a new testnet

1. Raise the 3 nodes that will be used for the testnet. (Check the [Readme](../README.md#raise-the-nodes) for more info)

2. Generate the keyring appriopriately. 
Check [configure the keyring](../README.md#configure-the-keyring) section in the main Readme.

3. (Optional: put the address in an ENV var) \
`MY_VALIDATOR_ADDRESS=$(quasarnoded keys show < validator_key_name > -a --keyring-backend < keyring name > )`

4. (In each node) Initialize the node files with:
`quasarnoded init < node_moniker > --chain-id < questnet-01/02/03/etc >` \
(adjust the chain-id to the current chain)

5. Add the initial token allocation for the validator address with:
`quasarnoded add-genesis-account $MY_VALIDATOR_ADDRESS 100000000000uqsr`

6. Add the initial token allocation for the other validators (other Quasar nodes, and participants of this questnet as well). You need to issue this command for each public address.
`quasarnoded add-genesis-account < public address >  100000000000uqsr`


7. Add the generated genesis file as `pre-genesis.json` to `questnet/v01` (or corresponding phase) folder. e.g. : `questnet/v01/pre-genesis.json`

8. Wait for the the participant nodes to sign this pre-genesis transaction with their initial delegation using the following command:
`quasarnoded gentx < validator_key_name > 100000000uqsr --chain-id < questnet-01/02/03/etc > --keyring-backend < keyring name > `
They should upload it to `questnet/v01/gentx/` using the `gentx-< monicker >.json` name structure.
Confirm that all the participants (at least the mandatory ones) already sent his genesis transaction.

9. Put all the gentx files in the in the `gentx` folder of one of your nodes and collect them to create the definitive genesis.json using:
`quasarnoded collect-gentxs` \
Validate the result with: `quasarnoded validate-genesis` \
Upload the resulting `genesis.json` file to the corresponding phase folder afterwards. e.g.: `questnet/v01/genesis.json`

10. Define the initial persistent peers set and provide them for everyone to be able to use them in `questnet/v01/persistent-peers.txt`
This set of NODE_ID@IP_OR_HOSTNAME:PORT should be placed in the each node, in the file `config/config.toml` in the `persistent_peers` parameter, as a comma separated list. e.g.:
`persistent_peers = 7664...970bb@10.204.0.35:26656,b54...888@10.204.0.34:26656`


Notes: 

To distribute the pre-genesis file and collect the genesis transactions within your nodes you can use the scripts provided in `utils` folder.

You can see a bunch of useful commands [here](./Useful_commands.md)