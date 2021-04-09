// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;

/**
 * @dev FastYield functions that do not require less than the min timelock
 */
interface IFastYield {
    function add(
        uint256 _allocPoint,
        address _want,
        bool _withUpdate,
        address _strat
    ) external;

    function set(
        uint256 _pid,
        uint256 _allocPoint,
        bool _withUpdate
    ) external;
}