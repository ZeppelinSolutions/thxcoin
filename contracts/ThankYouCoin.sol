pragma solidity ^0.4.11;


import "zeppelin-solidity/contracts/token/MintableToken.sol";


contract ThankYouCoin is MintableToken {

  string public constant name = "ThankYouCoin";
  string public constant symbol = "THX";
  uint8 public constant decimals = 18;
  string public version = '1.0';

}
