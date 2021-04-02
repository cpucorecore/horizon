############ dagProve cmds ############
# generate DAGs
node index.js dagProve generate 0 -n 2

# this cmd will automate generate DAG for the block
node index.js dagProve blockProof -b 15249 -u http://localhost:8545


############ ELC cmds ############
# ELC deploy contract
# TODO: you can only deploy ELC from elc/migrate.sh for now
source .env
node index.js ELC deploy -b 35249 -u http://localhost:8545 http://localhost:7545


############ ELC relay cmds ############
# ELC relay
source .env
node index.js ethRelay relay http://localhost:8545 http://localhost:7545 0xcE5E56cBA007bCf2137C878618461E73d342A113


############ EProve cmds ############
# get Proof of a tx on eth
node index.js EProve proof http://localhost:8545 0xc008be9258da8b4c1da836caa5adbded5837cea7532dd52a2de37b860b0d22a3


############ Everifier cmds ############
# deploy EVerifier contract
node index.js EVerifier deploy http://localhost:7545
#0x8AbfDd996D7334bF01c25F482Cac3B7b6310Ebe0


# use EVerifier to verify contract
# this cmd only verify transactions for block, not verify block, shold use ELC to verify block
node index.js EVerifier verify http://localhost:8545 0xc008be9258da8b4c1da836caa5adbded5837cea7532dd52a2de37b860b0d22a3 http://localhost:7545 0x8AbfDd996D7334bF01c25F482Cac3B7b6310Ebe0

############ Bridge cmds ############

# deploy bridge
# must source .env.bridge first
node index.js Bridge deploy http://localhost:8545 http://localhost:7545

# deploy faucet token
# must source .env.bridge first
node index.js Bridge deployFaucet http://localhost:8545 -m 10000

# changeClient
node index.js Bridge change http://localhost:9545 0x28893528e0793Ea85404612A5054467a42187Bb4 0x6Fbeae3F0Cfc7168ECd3F16f50d5c71e1549F70E

# map faucet from ethereum to harmony chain
# must changeClient before map
# this cmd can not used for this being a semi-finished project
node index.js Bridge map http://localhost:8545 0xB6afe1e682B36607e12d0300c7B3A8e39C99bCc8 http://localhost:7545 0x3599Fe36A8590c51e4f52Be5BAC2381584E70E61 0x23De206E8c5720F3b19a4aCCf91d8eCddEf31692
