# Quasar Questnet versions and associated documents

This repo will be used to track the different genesis ceremonies we will be celebrating during our Questnet phase.
We will also have the supporting documentation here.

## Quasar current testnet is v04.

- chain id: __qsr-questnet-04__
- code version: __v0.0.2-alpha-11__
- RPC endpoints:
    - __https://quasar-testnet-rpc.polkachu.com__
    - __https://questnet.quasar-finance.rhinostake.com__
    - __https://quasar-testnet-rpc.swiss-staking.ch__
    - __https://testnet-quasar-rpc.lavenderfive.com__
    - __https://rpc.quasar.nodexcapital.com__

- REST (LCD) endpoints:
    - __https://quasar-testnet-api.polkachu.com__
    - __https://questnet.quasar-finance.rhinostake.com__
    - __https://quasar-testnet-api.swiss-staking.ch__
    - __https://testnet-quasar-api.lavenderfive.com__
    - __https://api.quasar.nodexcapital.com__
    
- gRPC endpoints:
    - __quasar-testnet-grpc.polkachu.com:18290__
    - __quasar-testnet-grpc.swiss-staking.ch:10090__
    - __https://testnet-quasar-grpc.lavenderfive.com:443__
    - __https://grpc.quasar.nodexcapital.com:443__

---

### Where to start?

1. Get quasar and create an address: [Get quasar](./docs/Get_quasar.md)

2. To make your node join the chain you need either:

    a. Participate in a genesis ceremony, if you are invited, please follow [this guide](./docs/Genesis.md).

    b. Join the chain after it has launched:
    1. Check [here](./docs/Join_chain.md) to see how to make your node join the chain.  
    2. And then [here](./docs/Promote_to_validator.md) to promote your node to validator.


If you just want to interact (RPC/API) with the running chain, please [review this](./docs/Interacting_with_chain.md).


###  Organization

The different phases will be numbered as v01, v02, v03... 
Inside each phase folder we will have:
- `pre-genesis.json` file: Provided by Quasar team, containing the initial token allocation.
- `gentx/` folder: Used by participants to upload their genesis transactions, in the form gentx-< monicker >.json
- `definitive-genesis.json ` file: Uploaded at the end of each ceremony by the quasar team. Should be used to launch the chain.
