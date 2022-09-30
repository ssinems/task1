pragma solidity ^0.8.7;
// SPDX-License-Identifier: MIT
contract task1{
    address public  owner;
    uint256 public balance;

    constructor(){
     owner =msg.sender;
    }
    receive() payable external{
    balance += msg.value;
    }
    function withraw (uint amount ,address payable destAddr) public{
        require(msg.sender == owner,"Only owner can withraw");
        require(amount<= balance, "insufficent");
        destAddr.transfer(amount);
        balance-=amount;

    }
}