# Quasar Questnet versions and docs:

## Documents available

[Start here](./docs/Get_quasar.md) to get the last chain binary.

For each genesis ceremony, we will be following [this procedure](./docs/Genesis.md).

If you want to join the chain after it has launched, please [follow here](./docs/Join_chain.md).

To promote your node to validator, please [check this](./docs/Promote_to_validator.md).

Please [review this](./docs/Interacting_with_chain.md) if you want to interact through RCP with the running chain.

## Genesis ceremonies

This repo will be used to track the different genesis ceremonies we will be celebrating during our Questnet phase.

### Organization

The different phases will be numbered as v01, v02, v03... 
Inside each phase folder we will have:
- `pre-genesis.json` file: Provided by Quasar team, containing the initial token allocation.
- `gentx/` folder: Used by participants to upload their genesis transactions, in the form gentx-< monicker >.json
- `definitive-genesis.json ` file: Uploaded at the end of each ceremony by the quasar team. Should be used to launch the chain.
