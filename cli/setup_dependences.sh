# set cli
npm install

# setup eth2hmy-relay
cd ../eth2hmy-relay
npm install
truffle compile

# setup eprover
cd ../eprover
npm install

# setup bridge
cd ../bridge
npm install
truffle compile

# setup elc
cd ../elc
bash setup_js_libs.sh
truffle compile

#setup everifier
cd ../everifier
npm install
truffle compile

cd -
