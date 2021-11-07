// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Helper functions OpenZeppelin provides.
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

import "hardhat/console.sol";
import "./libraries/Base64.sol";
contract OhBilaiJ is ERC721 {
    struct CharAtrib{
        uint charIndex;
        string name;
        string imageURI;
        uint heart;
        uint maxHeart;
        uint atkDmg;
    }
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    CharAtrib[] defaultChar;
    mapping(uint256 => CharAtrib) public nfrHolderAttributes;
    mapping(address => uint256) public nfrHolders;
  constructor(
      string [] memory charName,
      string[] memory charImgURIs,
      uint[] memory charHeart,
      uint [] memory charAtkDmg
  )
  ERC721("Heroes", "Hero") {
      for(uint i = 0;i< charName.length; i += 1){
          defaultChar.push(CharAtrib({
              charIndex: i,
              name: charName[i],
              imageURI: charImgURIs[i],
              heart: charHeart[i],
              maxHeart: charHeart[i],
              atkDmg: charAtkDmg[i]
          }));
          CharAtrib memory c = defaultChar[i];
          console.log("Done initializing %s w/ HP %s, img %s",c.name,c.heart,c.imageURI);
      }
    _tokenIds.increment();
  }
  function tokenURI(uint256 _tokenId) public view override returns(string memory){
      CharAtrib memory charAtrib = nfrHolderAttributes[_tokenId];
      string memory strHP = Strings.toString(charAtrib.heart);
     // string memory strMaxHp = Strings.toString(charAtrib.maxHeart);
      string memory strAtkDmg = Strings.toString(charAtrib.atkDmg);
      string memory json = Base64.encode(
          bytes(
              string(
          abi.encodePacked(
          '{"name": "',
            charAtrib.name,
            ' -- NFT #: ',
            Strings.toString(_tokenId),
            '", "description": "CriticalHit is a turn-based NFT game where you take turns to attack the boos.", "image": "',
            charAtrib.imageURI,
            '", "attributes": [ { "trait_type": "Health Points", "value": ',strHP,', "max_value": 300 }, { "trait_type": "Attack Damage", "value": ',
            strAtkDmg,', "max_value": 400} ]}'
      )
      )
      )
      );
       string memory output = string(
    abi.encodePacked("data:application/json;base64,", json)
  );
  
  return output;
          }

  function mintCharNFT(uint _charIndex) external {
      uint256 newItemId = _tokenIds.current();
      _safeMint(msg.sender, newItemId);
      nfrHolderAttributes[newItemId] = CharAtrib(
          {
              charIndex: _charIndex,
              name: defaultChar[_charIndex].name,
              imageURI: defaultChar[_charIndex].imageURI,
              heart: defaultChar[_charIndex].heart,
              maxHeart: defaultChar[_charIndex].heart,
              atkDmg: defaultChar[_charIndex].atkDmg

          }
      );
      console.log("Minted NFT w/ tokenId %s and characterIndex %s", newItemId,_charIndex);
     // nftHolders[msg.sender] = newItemId;
      _tokenIds.increment();
  }
  
  }
