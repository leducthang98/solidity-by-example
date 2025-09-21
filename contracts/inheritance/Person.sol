// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Person {
    function getGender() public pure virtual returns (string memory) {
        return "unknown";
    }
}
