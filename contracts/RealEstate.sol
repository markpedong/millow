// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.26;

import {ERC721URIStorage} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract RealEstate is ERC721URIStorage {
    uint256 private _nextTokenId;

    constructor() ERC721("GameItem", "ITM") {}

    function mint(string memory tokenURI) public returns (uint256) {
        uint256 newItemId = _nextTokenId++;
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }

    function totalSupply() public view returns (uint256) {
        return _nextTokenId;
    }
}
