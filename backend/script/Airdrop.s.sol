// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/Airdrop.sol";

contract DeployAirdrop is Script {

    function run() public {
        vm.startBroadcast();
        new Airdrop();
        vm.stopBroadcast();
    }
}
