// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract Faucet {
    receive () external payable {}

    // Give ETH to anyone who asks.
    function withdraw(uint withdrawAmount) public {
        // Limit withdrawal amount.
        require(withdrawAmount <= 100000000000000000);
        // Send the amount to the address that requested it.
        msg.sender.transfer(withdrawAmount);
    }
}
