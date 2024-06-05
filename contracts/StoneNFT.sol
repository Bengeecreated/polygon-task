// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.18;

import "erc721a/contracts/ERC721A.sol";

contract StoneNFT is ERC721A {
    uint8 public maxSupply = 5;

    constructor() ERC721A("StoneNFT", "SNFT") {}

    function safeMint(uint8 _quantity) external payable {
        _safeMint(msg.sender, _quantity);
    }

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://QmPCqwnSRycJgz1naVUWQg8ewMJEq77Gum9T563EJ8E8E1/";
    }

    function promptDescription() external pure returns (string memory) {
        return "create 5 nft images create 1 more";
    }

    function balanceOf(address owner) public view override returns (uint256) {
        return super.balanceOf(owner);
    }
}