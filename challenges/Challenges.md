# Questnet challenges technical guide

# Table of Contents
1. [Genesis](#1-genesis)
2. [Liveliness](#2-liveliness)
3. [State sync](#3-state-sync)
4. [Governance parameter change](#4-governance-parameter-change)
5. [Late joining](#5-late-joining)

# Challenges

### 1. Genesis
Details for this challenge are covered in [this document](../docs/Genesis.md)

### 2. Liveliness

In this challenge Quasar team will check several blocks at random heights and see if all the validators signed them.

### 3. State sync

1. For this challenge you will need to wait a few weeks for the chain to increase its height
2. After that, you will raise a new full node and provide its public IP address and Tendermint RPC api port.
3. You will notify when the node finished its catch up.
4. Quasar will check using the API if the node finished it sync or not:\
e.g.: `curl -s http://34.175.250.231:26657/status? | jq '.result.sync_info.catching_up'`

### 4. Governance parameter change

1. Quasar will issue a governance proposal and publish the ID
2. Participants should discuss the proposal and provide tokens in deposit to reach quorum if they agree on having the discussion
3. After quorum is reached, participants should vote.

Useful commands for this. (Replace proposal Nr., chain id, key name and keyring accordingly)

Deposit for active proposal:
`quasarnoded tx gov deposit 2 199600000uqsr --chain-id qsr-internal-questnet-01 --from validator_key --keyring-backend test --output json | jq`

Vote for active proposal:
`quasarnoded tx gov vote 2 yes --chain-id qsr-internal-questnet-01 --from validator_key --keyring-backend test --output json | jq`


### 5. Late joining

Details for this challenge are covered in [this document](../docs/Join_chain.md)

### 6. Intentional missbehavior

For this challenges, nodes should try to double sign blocks.
To achieve this you should:
1. Pick from your running validator, the file `priv_validator_key.json` (usually placed in `~.quasarnode/config`)
2. Put it the same place in a new just raised validator node.
3. Restart the service in this new node.
4. Wait to see the key first node being jailed and tombstoned for double signing.

We should see your validator jailed using this command:

`quasarnoded q staking validator < quasarvaloper-address-of-validator > -o json | jq '.jailed'`

