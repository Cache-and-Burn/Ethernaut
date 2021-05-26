pragma solidity ^0.8.0;

import './SimpleToken.sol';

contract RecoveryAttack {
    
    SimpleToken target;
    
    constructor( address payable _targetAddr) public {
        target = SimpleToken(_targetAddr);
    }
    
    
}
