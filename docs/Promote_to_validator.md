
Assuming you have a full node running, you can promote your it to Validator by staking sufficient tokens. 

1. Provide your public address to Quasar team and ask for tokens to be able to create your validator.


## Promote your node to validator

If you got enough tokens, you can use the following command:

```
quasarnoded tx staking create-validator \
    --amount 1000000uqsr \
    --chain-id="< questnet-01/02/03/etc >"    \
    --moniker=< node_moniker >    \
    --website="https://quasar.fi"    \
    --details="Joining quasar testnet"    \
    --commission-rate="0.1"    \
    --commission-max-rate="0.20"    \
    --commission-max-change-rate="0.01"    \
    --min-self-delegation="1"    \
    --identity="other_validator"    \
    --from < validator_key_name >    \
    --keyring-backend < keyring name >    \
    --pubkey=$(quasarnoded tendermint show-validator)
```
NOTE: Your validator will stay as "unbonded" if you stake less than 1000000 tokens. [^1]


[^1]:(https://github.com/cosmos/cosmos-sdk/blob/07f7035f8d88c362ca065e73aa6900ce46f86f52/types/staking.go#L22)