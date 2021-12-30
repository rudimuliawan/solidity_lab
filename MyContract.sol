// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyContract {
    string public myString = "Hello World";
}

contract MyNFT is ERC721 {

    constructor() ERC721("MyNFT", "MNFT") {
    }
}