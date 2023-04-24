// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "./ERC721A.sol";
import "openzeppelin-contracts/access/Ownable.sol";

contract Dummy721 is ERC721A, Ownable {
    uint256 public constant AirDropOne = 1;
    uint256 public constant AirDropTwo = 2;
    uint256 public constant AirDropThree = 3;
    uint256[] public tokenIds = [AirDropOne, AirDropTwo, AirDropThree];

    constructor() ERC721A("", "") {
        // _mint(msg.sender, AirDropOne, 10, "" );
        // _mint(msg.sender, AirDropTwo, 10, "" );
        // _mint(msg.sender, AirDropThree, 10, "" );
    }

    function mint(address to, uint256 quantity)
        public
        onlyOwner
    {
        _mint(to, quantity);
    }
}