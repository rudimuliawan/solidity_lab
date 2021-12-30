// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Owned {
    
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You're not allowed");
        _;   
    }
}