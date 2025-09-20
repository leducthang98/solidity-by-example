// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./Enum.sol";
import "./Struct.sol";

contract Counter {
    uint public count;
    address public constant OWNER = 0x1a7Fe60bdcd67D0365D2a9Df4a107b3C5Bde7055;
    Status public status;
    uint256[] public array;
    mapping(address => uint256) public myMap;
    Person[] public people;

    function setMyMap(address _addr, uint256 _value) public {
        myMap[_addr] = _value;
    }

    function get() public view returns (uint256) {
        return count;
    }

    function inc() public {
        count += 1;
    }

    function dec() public {
        count -= 1;
    }

    function currentState() public view returns (address) {
        if (count % 2 == 0) {
            address sender = msg.sender;
            return sender;
        }

        return OWNER;
    }

    function appendArray(uint256 _value) public {
        array.push(_value);
    }

    function addPerson(string memory _name, uint256 _age) public{
        people.push(Person(_name,_age));
    }
}
