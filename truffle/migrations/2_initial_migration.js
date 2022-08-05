const Migrations = artifacts.require("./contracts/certificate.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
