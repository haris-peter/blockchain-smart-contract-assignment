// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    uint256 private storedNumber;

    event NumberUpdated(uint256 newNumber);

    function setNumber(uint256 _num) public {
        storedNumber = _num;
        emit NumberUpdated(_num);
    }

    function getNumber() public view returns (uint256) {
        return storedNumber;
    }
}
