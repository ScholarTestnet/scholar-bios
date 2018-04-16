#!/bin/bash

# EOS Scholar - Create & Issue EOS Tokens
# https://github.com/ScholarTestnet

cleos push action eosio create ./data/create-token.json -p eosio@active
cleos push action eosio issue ./data/issue-token.json -p eosio@active
