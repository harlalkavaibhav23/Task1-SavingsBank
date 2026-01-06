// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SavingsBank {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner.");
        _;
    }

    function deposit() public payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function withdraw(uint _amount) public onlyOwner {
        require(_amount <= address(this).balance, "Insufficient funds");
        payable(msg.sender).transfer(_amount);
    }
}
