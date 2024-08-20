// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";
import {DeployFundMe} from "../script/DeployFundMe.s.sol";

contract FundMeTest {
  FundMe fundMe;

  // This function runs first
  function setUp() external {
    // us -> FundMeTest -> FundMe
    //fundMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    DeployFundMe deployFundMe = new DeployFundMe();
    fundMe = deployFundMe.run();
  }

  function testMinimumDollarIsFive() public view {
    assert(fundMe.MINIMUM_USD() == 5e18);
  }

  function testOwnerIsMsgSender() public view {
    console.log(fundMe.i_owner());
    console.log(msg.sender);
    assert(fundMe.i_owner() == msg.sender);
  }
}