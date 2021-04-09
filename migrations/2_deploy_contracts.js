const FastToken = artifacts.require("FASTToken");
const Fastyield = artifacts.require('Fastyield');
const TimelockController = artifacts.require('TimelockController');

module.exports = async function (deployer) {
  // Token deploy
  await deployer.deploy(FastToken);
  const deployedToken = await FastToken.deployed();

  // Deploy Fast Yield
  const _token = deployedToken.address;
  await deployer.deploy(Fastyield, _token);
  const deployedFastyield = await Fastyield.deployed();

  // Deploy TimelockController
  await deployer.deploy(TimelockController);
  const deployedTimelockController = await TimelockController.deployed();

  // Transfer ownership of fastyield to timelock
  await deployedFastyield.transferOwnership(deployedTimelockController.address);
};

