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
