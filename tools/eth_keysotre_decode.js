var keyth=require('keythereum')
var keyobj=keyth.importFromFile('0x037B539b0D6aE674c01cF5D9F84ea81B22532694','/Users/sun/data/eth/prinet');
var privateKey=keyth.recover(process.env.ETHPASS, keyobj);
console.log(privateKey.toString('hex'));
