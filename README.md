# Task 1: Savings Bank

This is the Smart Contract for a personal bank where anyone can deposit, but only the owner can withdraw.

## How the Code Works

* **The Owner Variable:** We declare a variable named `owner` of the data type `address` which can hold the Ethereum account ID of the person who deploys the contract. His address is saved via `msg.sender` inside the constructor. It is `public` so anyone can check who the owner is.

* **The Security Guard:** We made a modifier `onlyOwner` to ensure security. If the person accessing the contract has a different ID other than the `owner`, then he is not allowed to make any withdrawals or changes, keeping our account secure.

* **The Withdrawal:** We added this modifier to the withdraw function. This is to ensure that only the `owner` has the power to withdraw Ethers/Wei from the account.
