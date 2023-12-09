# OpenSkull (OSK) Token

## Overview

OpenSkull (OSK) is an ERC-20 token on the Ethereum blockchain with additional functionalities. Token holders can claim special "heads" through a unique process.

## Features

- **ERC-20 Standard:** OpenSkull follows the ERC-20 token standard, making it compatible with various decentralized applications (DApps) and exchanges.

- **Heads Claim:** Token holders can claim a special "head" by calling the `claimHead` function. Each address can claim only once, and the claim requires a minimum balance of tokens.

## Contracts

- `OpenSkull.sol`: Main contract file that inherits from `ERC20` and `Ownable` contracts, with added functionalities for claiming heads.

## Deployment

The contract is deployed with an initial supply, and ownership is assigned to the specified address during deployment.

## Usage

### Claiming Heads

Token holders can claim a special "head" by calling the `claimHead` function. This requires a minimum balance of tokens and can only be done once per address.

### Minting Heads

The owner of the contract can mint new tokens, including special "heads," by calling the mintHead function.

### Burning Heads

Token holders can burn their own tokens using the burnHead function.

