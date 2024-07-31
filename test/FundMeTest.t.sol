// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";

contract FundMeTest {
  uint256 number = 1;

  // This function runs first
  function setUp() external {
    number = 2;
  }

  function testDemo() public view{
    assert(number == 2);
  }
}