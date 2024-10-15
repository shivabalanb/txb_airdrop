// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Airdrop {
    function perform_airdrop(address[] memory recipients) public payable {
        // uint256 split_amount = ? 1. IMPLEMENT HERE; HOW TO CALCULATE SPLIT FROM ETH AMOUNT SENT IN FUNCTION CALL

        for (uint256 i = 0; i < recipients.length; i++){
            // 2. IMPLEMENT HERE; HOW TO TRANSFER THE AMOUNT TO THE ADDRESSES    
        }
    }
}
