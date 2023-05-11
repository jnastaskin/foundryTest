// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import {Dummy721} from "../src/Dummy721.sol";

contract AirdropERC721 is Script {
    function setUp() public {}
    address public CONTRACT_OWNER =0x976EA74026E726554dB657fA54763abd0C3a0aa9;
    address public MY_LOCAL_ADDRESS = 0x70997970C51812dc3A010C7d01b50e0d17dc79C8;
    bytes constant DATA = abi.encodePacked("");

    function run() public {
       vm.startBroadcast(CONTRACT_OWNER);
       Dummy721 ad = new Dummy721();
       ad.mint(MY_LOCAL_ADDRESS, 10);
       vm.stopBroadcast();
    }

    function mintTokensForSelf() public {
        vm.startBroadcast(CONTRACT_OWNER);
       //contract address is 0xbD3afEF4b26918cDb922F9D80aeA9b8e64524432 
        Dummy721 ad = Dummy721(0xbD3afEF4b26918cDb922F9D80aeA9b8e64524432);
        ad.mint(0xFEfE69bc078e23f1cbaBB2e4D1f4cF775aA9053E, 2);
        vm.stopBroadcast();
     }
}
