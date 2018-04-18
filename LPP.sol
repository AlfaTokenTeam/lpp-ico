pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract LPP is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function LPP(address _owner)  UpgradeableToken(_owner) {
    name = "LPP";
    symbol = "LPP";
    totalSupply = 1000000000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}