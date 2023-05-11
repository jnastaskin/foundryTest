// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import {Airdrop} from "../src/Airdrop.sol";

contract AirdropERC1155 is Script {
    function setUp() public {}
    address public CONTRACT_OWNER =0x976EA74026E726554dB657fA54763abd0C3a0aa9;
    address public MY_LOCAL_ADDRESS = 0x70997970C51812dc3A010C7d01b50e0d17dc79C8;
    bytes constant DATA = abi.encodePacked("");

    function run() public {
       vm.startBroadcast(CONTRACT_OWNER);
       Airdrop ad = new Airdrop();
       ad.mint(MY_LOCAL_ADDRESS, 1, 1000, DATA);
       vm.stopBroadcast();
    }

    function mintTokensForSelf() public {
        vm.startBroadcast(CONTRACT_OWNER);
        // use address from deployed contract 0x7ef8E99980Da5bcEDcF7C10f41E55f759F6A174B
        Airdrop ad = Airdrop(0x7ef8E99980Da5bcEDcF7C10f41E55f759F6A174B);
        ad.mint(MY_LOCAL_ADDRESS, 3, 100, DATA);
        vm.stopBroadcast();
     }
}