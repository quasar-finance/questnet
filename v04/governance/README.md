Query active proposals:

`quasarnoded q gov proposals --chain-id qsr-questnet-04`

Vote for active proposal:

`quasarnoded tx gov vote 2 yes --chain-id qsr-questnet-04 --from node_1 --keyring-backend test --output json | jq`


Quasar will submit the proposal with this command:

`quasarnoded tx gov submit-proposal param-change proposal.json --from node_1 --chain-id qsr-questnet-04 --keyring-backend test --output json | jq`
