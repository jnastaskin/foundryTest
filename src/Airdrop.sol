// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "openzeppelin-contracts/token/ERC1155/ERC1155.sol";
import "openzeppelin-contracts/access/Ownable.sol";
contract Airdrop is ERC1155, Ownable {
    uint256 public constant AirDropOne = 1;
    uint256 public constant AirDropTwo = 2;
    uint256 public constant AirDropThree = 3;
    uint256[] public tokenIds = [AirDropOne, AirDropTwo, AirDropThree];

    constructor() ERC1155("") {
        // _mint(msg.sender, AirDropOne, 10, "" );
        // _mint(msg.sender, AirDropTwo, 10, "" );
        // _mint(msg.sender, AirDropThree, 10, "" );
    }
    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }
    function mint(address account, uint256 id, uint256 amount, bytes memory data)
        public
        onlyOwner
    {
        _mint(account, id, amount, data);
    }
    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
        onlyOwner
    {
        _mintBatch(to, ids, amounts, data);
    }

    function ownsSwag(address account) public view returns (bool) {
        uint256 numTokens = tokenIds.length;
        for (uint256 i = 0; i < numTokens; ++i) {
            if (balanceOf(account, tokenIds[i]) > 0) {
                return true;
            }
        }

        return false;
    } 
}