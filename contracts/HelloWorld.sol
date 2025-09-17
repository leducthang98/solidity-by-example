// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract HelloWorld {
    string public greeting;
    address public owner;
    
    event GreetingChanged(string newGreeting, address changedBy);
    
    constructor() {
        greeting = "Hello World!";
        owner = msg.sender;
    }
    
    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
        emit GreetingChanged(_greeting, msg.sender);
    }
    
    function getGreeting() public view returns (string memory) {
        return greeting;
    }
    
    function greets() public view returns (string memory) {
        return string(abi.encodePacked("Hello, ", greeting));
    }
}
