// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract StartStopUpdateExample {
    
    address owner;
    bool public isPaused;

    constructor() {
        owner = msg.sender;
    }

    function sendMoney() public payable {
    }

    function setPaused(bool _isPaused) public {
        require(msg.sender == owner, "You're not the owner");

        isPaused = _isPaused;
    }

    function withdrawAllMoney(address payable _to) public {
        require(msg.sender == owner, "You're not the owner");
        require(!isPaused, "Contract is Paused");

        _to.transfer(address(this).balance);
    }

    function destroySmartContract(address payable _to) public {
        require(msg.sender == owner, "You're not the owner");
        selfdestruct(_to);
    }
}