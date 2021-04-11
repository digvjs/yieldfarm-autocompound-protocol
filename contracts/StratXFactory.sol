// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;

import "./StratX.sol";

contract StratXFactory {
    event StratCreated(address indexed stratAddress);

    address[] public strats;

    function createStratX(
        address _fastYieldAddress,
        address _FASTAddress,
        bool _isCAKEStaking,
        bool _isAutoComp,
        address _farmContractAddress,
        uint256 _pid,
        address _wantAddress,
        address _token0Address,
        address _token1Address,
        address _earnedAddress,
        address _pancakeRouterAddress
    )
        public
        returns (address stratAddress)
    {
        StratX _stratX = new StratX(
            _fastYieldAddress,
            _FASTAddress,
            _isCAKEStaking,
            _isAutoComp,
            _farmContractAddress,
            _pid,
            _wantAddress,
            _token0Address,
            _token1Address,
            _earnedAddress,
            _pancakeRouterAddress
        );
        strats.push(address(_stratX));
        _stratX.transferOwnership(_fastYieldAddress);

        emit StratCreated(address(_stratX));
        return address(_stratX);
    }
}
