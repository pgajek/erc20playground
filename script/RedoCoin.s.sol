// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Upgrades} from "openzeppelin-foundry-upgrades/Upgrades.sol";
import {RedoCoin} from "src/RedoCoin.sol";

contract RedoCoinScript is Script {
  function setUp() public {}

  function run() public {
    // TODO: Set addresses for the variables below, then uncomment the following section:
    /*
    vm.startBroadcast();
    address initialOwner = <Set initialOwner address here>;
    address proxy = Upgrades.deployTransparentProxy(
      "RedoCoin.sol",
      initialOwner,
      abi.encodeCall(RedoCoin.initialize, (initialOwner))
    );
    RedoCoin instance = RedoCoin(proxy);
    console.log("Proxy deployed to %s", address(instance));
    vm.stopBroadcast();
    */
  }
}
