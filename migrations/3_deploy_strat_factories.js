const StratVLEVFactory = artifacts.require("StratVLEVFactory");
const StratXFactory = artifacts.require("StratXFactory");

module.exports = async function (deployer) {
  // StratVLEV deploy
  await deployer.deploy(StratVLEVFactory);

  // StratX deploy
  await deployer.deploy(StratXFactory);

};

