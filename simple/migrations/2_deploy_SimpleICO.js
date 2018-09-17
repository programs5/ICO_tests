const SimpleICO = artifacts.require("SimpleICO.sol");

module.exports = function(deployer, network) {
  deployer.deploy(SimpleICO, 100000);
};
