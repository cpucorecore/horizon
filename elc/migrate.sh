block=$1
truffle migrate --reset --network ganache --block=${block} --ethurl=http://localhost:8545
