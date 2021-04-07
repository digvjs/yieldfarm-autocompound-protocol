const FastToken = artifacts.require("FAST");

module.exports = function (deployer) {
  deployer.deploy(FastToken);
};
