// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract WorkingWithVariables {
    address public myAddress;
    uint8 public myUint8;
    uint256 public myUint;
    bool public myBool;
    string public myString = "Hello World";

    function setMyUint(uint256 _myUint) public {
        myUint = _myUint;
    }

    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }
    
    function incrementMyUint() public {
        myUint8++;
    }

    function decrementMyUint() public {
        myUint8--;
    }

    function setAddress(address _address) public {
        myAddress = _address;
    }

    function getBalanceOfAddress() public view returns(uint) {
        return myAddress.balance;
    }

    function setMyString(string memory _myString) public {
        myString = _myString;
    }
}
