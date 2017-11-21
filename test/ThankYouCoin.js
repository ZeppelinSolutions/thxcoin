'use strict';

const BigNumber = web3.BigNumber

require('chai')
  .use(require('chai-as-promised'))
  .use(require('chai-bignumber')(BigNumber))
  .should()

var ThankYouCoin = artifacts.require('../contracts/ThankYouCoin.sol');

contract('ThankYouCoin', function([_, owner]) {
  let token;

  beforeEach(async function() {
    token = await ThankYouCoin.new({from: owner});
  });

  it.skip('owner should have initial supply', async function() {
    const initialSupply = await token.INITIAL_SUPPLY();
    const ownerBal = await token.balanceOf(owner);
    const totalSupply = await token.totalSupply();
    totalSupply.should.be.bignumber.equal(ownerBal);
    totalSupply.should.be.bignumber.equal(initialSupply);
  });

});
