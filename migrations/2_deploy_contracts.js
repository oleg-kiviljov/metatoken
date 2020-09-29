require('dotenv').config()

const { deployProxy } = require('@openzeppelin/truffle-upgrades');
const MetaToken = artifacts.require('MetaToken');

module.exports = async function (deployer) {
  await deployProxy(MetaToken, [process.env.TOKEN_NAME, process.env.TOKEN_SYMBOL, process.env.TOTAL_SUPPLY], { deployer });
};