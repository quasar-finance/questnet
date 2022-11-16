To check a key by its name: 

`quasarnoded keys show < key_name > --keyring-backend < keyring_backend_name >`

To list all keys in keyring:

`quasarnoded keys list --keyring-backend < keyring_backend_name >`

To show only address, use `-a` flag, e.g:

`quasarnoded keys show < key_name > -a --keyring-backend < keyring_backend_name >`


Query balances of local account:
`quasarnoded q bank balances $(quasarnoded keys show validator_key -a --keyring-backend test)`

To transfer tokens to people joining:

`quasarnoded tx bank send < origin> < destination >  100000000uqsr --chain-id qsr-internal-questnet-01 --from < signer_key_name > --keyring-backend < keyring_backend_name > --node tcp: //localhost:26657`

Check commission and rewards for a validators and delegators:

`quasarnoded query distribution commission`

`quasarnoded query distribution rewards`


How to unjail a node jailed:

`quasarnoded tx slashing unjail --from=validator_key --keyring-backend test --chain-id qsr-internal-questnet-01`


Delegate tokens to a validator:
`quasarnoded tx staking delegate quasarvaloper1kd6s78m3f8pghhcjzawqfayng600swj0zlejhn 10000000000uqsr --from quasar1rmwyekga6vtvkhzn4vltfnwpv0l6cqd7ltfuuv --keyring-backend test --chain-id qsr-internal-questnet-02`


Query governance params:

`quasarnoded q gov params`

Submit gov proposal:

`quasarnoded tx gov submit-proposal param-change proposal.json --node tcp://localhost:26657 --from quasar18wly4stm66wcjg47zfff87caxacvtlasl6ed5r --chain-id qsr-internal-questnet-01 --output json --keyring-backend test | jq`

Query active proposals:

`quasarnoded q gov proposals`

Vote for active proposal:
`quasarnoded tx gov vote 2 yes --node tcp://localhost:26657 --chain-id qsr-internal-questnet-01 --from validator_key --keyring-backend test --output json | jq`

Deposit for active proposal:
`quasarnoded tx gov deposit 2 199600000uqsr --node tcp://localhost:26657 --chain-id qsr-internal-questnet-01 --from validator_key --keyring-backend test --output json | jq

Vote weighted
`quasarnoded tx gov weighted-vote 2 yes=0.5,no=0.5 --node tcp://localhost:26657 --chain-id qsr-internal-questnet-01 --from validator_key --keyring-backend test --output json | jq`

Check current validators addresses:

`quasarnoded q staking validators -o json | jq '.validators[].operator_address'` 

quasarnoded q staking validators -o json | jq '.validators[].operator_address' 
quasarnoded q staking validators -o json | jq '.validators[].operator_address' | xargs quasarnoded q  staking  delegations-to 

Check delegations to certain validator:
`quasarnoded q  staking  delegations-to `




Api request for balance:

http://localhost:1317/cosmos/bank/v1beta1/balances/quasar1yczswgcmhdjl0rdzjx29jwgtmq8h26hykdjx9k