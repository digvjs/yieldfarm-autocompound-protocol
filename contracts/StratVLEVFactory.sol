// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;

import "./StratVLEV.sol";

contract StratVLEVFactory {
    event StratCreated(address indexed stratAddress);

    address[] public strats;

    function createStratVLEV(
        address _fastYieldAddress,
        address _FASTAddress,
        address _wantAddress,
        address _vTokenAddress,
        address _pancakeRouterAddress
    )
        public
        returns (address stratAddress)
    {
        StratVLEV _stratVLEV = new StratVLEV(
            _fastYieldAddress,
            _FASTAddress,
            _wantAddress,
            _vTokenAddress,
            _pancakeRouterAddress
        );
        strats.push(address(_stratVLEV));
        _stratVLEV.transferOwnership(_fastYieldAddress);

        emit StratCreated(address(_stratVLEV));
        return address(_stratVLEV);
    }
}
