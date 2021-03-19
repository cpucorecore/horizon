# eg. bash relay_block.sh 0x6B63f358437882B4dBeAB5a2f39425B851193DC9 15253
elc_contract_addr=$1
block_to_relay=$2
truffle --network ganache exec cli/eth2one-relay.js -e ${elc_contract_addr} --ethurl=http://localhost:8545 --block ${block_to_relay}
