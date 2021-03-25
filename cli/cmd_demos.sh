# generate DAGs
node index.js dagProve generate 0 -n 2

# this cmd will automate generate DAG for the block
node index.js dagProve blockProof -b 15249 -u http://localhost:8545

# ELC deploy contract
# TODO: you can deploy ELC from elc/migrate.sh only for now
source .env
node index.js ELC deploy -b 35249 -u http://localhost:8545 http://localhost:7545

# ELC relay
node index.js ethRelay relay http://localhost:8545 http://localhost:7545 0xcE5E56cBA007bCf2137C878618461E73d342A113

# get Proof of a tx on eth
# node index.js EProve proof ethRPC txHash
node index.js EProve proof http://localhost:8545 0xc008be9258da8b4c1da836caa5adbded5837cea7532dd52a2de37b860b0d22a3

# deploy EVerifier contract
node index.js EVerifier deploy http://localhost:7545
#0x8AbfDd996D7334bF01c25F482Cac3B7b6310Ebe0

# use EVerifier to verify contract
node index.js EVerifier verify http://localhost:8545 0xc008be9258da8b4c1da836caa5adbded5837cea7532dd52a2de37b860b0d22a3 http://localhost:7545 0x8AbfDd996D7334bF01c25F482Cac3B7b6310Ebe0
