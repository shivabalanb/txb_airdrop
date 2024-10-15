**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

You will only need to use Forge

make sure you have foundry installed!

- curl -L https://foundry.paradigm.xyz | bash
- foundryup

check with

- forge --version

## Useful Commands

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Deploy

create .env with:

- PRIVATE_KEY=
- RPC_URL=

```shell
$ forge script script/Airdrop.s.sol --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast
```

might have to run for command to work

```shell
$ source .env
```

### Verify and Publish

forge verify-contract \
 --rpc-url https://sepolia.base.org \
 --verifier blockscout \
 --verifier-url 'https://base-sepolia.blockscout.com/api/' \
 [CONTRACT ADDRESS] \
 src/Airdrop.sol:Airdrop

Once verified you can interact with your contract on any block explorer(ex: blockscout)

![interact with contract on blockscout](/backend/interact.png "interact with contract on blockscout")

## Documentation

https://book.getfoundry.sh/
