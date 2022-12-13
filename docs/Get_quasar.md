# Hardware requirements

These are the sugested spects, given we are still during testnet phase, you may decide to cut down a little.

- 4 or more physical CPU cores
- At least 500GB of SSD disk storage
- At least 16GB of memory
- At least 100mbps network bandwidth


# How to install Quasar

## Local machine 

### From sources

```
Our repo is still not open source. You will need to use the binary provided by quasar team by now. Proceed to next section.

1. Clone the repo with: `git clone git@github.com:quasar-finance/quasar.git`
2. Go to the repo folder and run `make build` to have the binary built in `./build/quasarnoded`
```
### Binary installation

(Currently tested in Ubuntu 22)

1. Download the binary corresponding to the testnet version from [here](https://github.com/quasar-finance/binary-release/).
2. Put it in your desired folder (it is useful to have it in your PATH)

### Creating your keys

1. Create the keys with the command: \
`quasarnoded keys add < my_new_testing_key > --keyring-backend test`\
(replace `< my_new_testing_key >` with whatever you like)\
INFO: This will use the testing backend (only for testing purposes). Do not use it in prod!

If you have pre-existing keys and a previous environment, you can remove them using: 

    WARNING: Use it at your own risk!

1. `quasarnoded tendermint unsafe-reset-all`
2. `quasarnoded keys list --keyring-backend test`
3. `quasarnoded keys delete < my_old_key > --keyring-backend test` (replace < my_old_key > accordingly.)
    

## Automatic deploy in GCP:


```
Not available at the moment
```


We have [recipes](https://github.com/quasar-finance/) developed to allow you to raise a node in GCP using terraform and configure it with Ansible.

They essentially will configure go, download our code and compile the binary, download and compile cosmovisor, and install it wrapping our binary as a systemd unit.

You will get a user called "quasar" with the node binary installed in its path. 

If you prefer, you can do it manually the same way is explained in the previous section.
