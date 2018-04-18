# High-level Boot Sequence Overview

#### [Click me switch to English version](README.md)
#### [点击查看中文版本](README-ZH.md)

Below are the steps required for booting up a new DAWN 3.0 testnet, following closely to [Thomas Cox's proposed BIOS Booting article](https://medium.com/eosio/bios-boot-eosio-blockchain-2b58b8a978a1).

## Pre-boot

1. One person will be chosen as the Boot Node.

## Boot Node

1. The Boot Node will grab the [Scholar Testnet Fake Snapshot](https://github.com/ScholarTestnet/scholar-accounts/blob/master/scripts/generate-snapshot.js). `((REPLACE THIS LINK WITH THE ACTUAL SNAPSHOT INSTEAD OF THE SCRIPT))`
2. The Boot Node will grab the [Scholar Testnet Genesis Block](https://raw.githubusercontent.com/ScholarTestnet/scholar-server-config/master/genesis.json).
3. The Boot Node will generate a new EOS Keypair to be used for the Boot Process  `(( CREATE SCRIPT THAT TAKES CARE OF STEPS 1-3 HERE  ))`
4. The Boot Node will then:

   1. Build the first block, `(( CREATE SCRIPT ))`
   2. Install the core operating contracts via the keypair generated above, `(( CREATE SCRIPT ))`
   3. Install the [list of 21 appointed block producers (ABPs)](https://github.com/ScholarTestnet/scholar-accounts/blob/master/bios/create-accounts.sh),
   4. Assign system powers to the 21 ABPs so they can hold initial elections (and no more),  `(( CREATE SCRIPT ))`
   5. Publish his private key from the keypair generated above (just posting it on Telegram is fine for our purposes).

## Appointed Block Producers

1. The ABPs connect and validate the setup.
2. Anyone else can now connect.
3. The ABPs launch and hold the elections in which they (and the initial Boot Node) are ineligible for voting (in our case, we should just bypass this and allow them to be eligible from the get-go if possible).

## Elected Block Producers

1. The EBPs continue to produce blocks as normal.
2. After 10 rounds, the EBPs can be replaced by any of the ABPs or the initial Boot Node if the votes allow.
