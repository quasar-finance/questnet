Query active proposals:

`quasarnoded q gov proposals --chain-id qsr-questnet-03 --node tcp://localhost:26657`

Vote for active proposal:

`quasarnoded tx gov vote 1 yes --chain-id qsr-questnet-03 --node tcp://localhost:26657 --from validator_1_key --keyring-backend test --output json | jq`


Quasar will submit the proposal with this command:

`quasarnoded tx gov submit-proposal param-change proposal.json --from validator_1_key --chain-id qsr-questnet-03 --node tcp://localhost:26657 --keyring-backend test --output json | jq`
