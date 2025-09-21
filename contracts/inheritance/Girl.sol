// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./Person.sol";

contract Girl is Person {
    function getGender() public pure override returns (string memory) {
        return "girl";
    }
}
