// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest {
  FundMe fundMe;

  // This function runs first
  function setUp() external {
    fundMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
  }

  function testMinimumDollarIsFive() public view{
    assert(fundMe.MINIMUM_USD() == 5e18);
  }
}