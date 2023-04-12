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
       ad.mint(MY_LOCAL_ADDRESS, 1, 100000, DATA);
       vm.stopBroadcast();
    }

    function mintTokensForSelf() public {
        vm.startBroadcast(CONTRACT_OWNER);
        // use address from deployed contract 0x77c7e3905c21177be97956c6620567596492c497
        Airdrop ad = Airdrop(0x77c7e3905c21177be97956c6620567596492c497);
        ad.mint(MY_LOCAL_ADDRESS, 1, 100, DATA);
        vm.stopBroadcast();
     }
}