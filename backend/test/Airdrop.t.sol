// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Airdrop} from "../src/Airdrop.sol";

contract AirdropTest is Test {
    Airdrop public airdrop;
    address[] public recipients;

    function setUp() public {
        airdrop = new Airdrop();
        
        recipients = [address(0x123), address(0x456), address(0x789)];
    }

    function testPerformAirdrop1() public {
        uint256 amountSent = 3 ether;
        // uint256 split_amount = amountSent / recipients.length;

        airdrop.perform_airdrop{value: amountSent}(recipients);

        for (uint256 i = 0; i < recipients.length; i++){
            assertEq(recipients[i].balance, 1 ether);
        } 
    }

    function testPerformAirdrop2() public {
        uint256 amountSent = 9 ether;
        // uint256 split_amount = amountSent / recipients.length;

        airdrop.perform_airdrop{value: amountSent}(recipients);

        for (uint256 i = 0; i < recipients.length; i++){
            assertEq(recipients[i].balance, 3 ether);
        } 
    }
}
