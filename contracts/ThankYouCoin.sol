pragma solidity ^0.4.11;


import "zeppelin-solidity/contracts/token/MintableToken.sol";


contract ThankYouCoin is MintableToken {

  string public constant name = "ThankYouCoin";
  string public constant symbol = "THX";
  uint256 public constant decimals = 18;
  string public version = '0.9';

  uint256 public constant INITIAL_SUPPLY = 10 * 10**decimals;

  function ThankYouCoin() MintableToken() {
    mint(owner, INITIAL_SUPPLY);
  }

}
