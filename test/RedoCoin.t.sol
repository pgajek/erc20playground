// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {Upgrades} from "openzeppelin-foundry-upgrades/Upgrades.sol";
import {RedoCoin} from "src/RedoCoin.sol";

contract RedoCoinTest is Test {
  RedoCoin public instance;

  function setUp() public {
    address initialOwner = vm.addr(1);
    address proxy = Upgrades.deployTransparentProxy(
      "RedoCoin.sol",
      initialOwner,
      abi.encodeCall(RedoCoin.initialize, (initialOwner))
    );
    instance = RedoCoin(proxy);
  }

  function testName() public view {
    assertEq(instance.name(), "RedoCoin");
  }
}
