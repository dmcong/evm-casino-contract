// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// These files are dynamically created at test time
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Casino.sol";

contract TestCasino {
  function testInitializeRoom() public {
    Casino meta = Casino(DeployedAddresses.Casino());
    meta.initializeRoom();
  }

  function testJoinRoom() public {
    Casino meta = Casino(DeployedAddresses.Casino());
    meta.joinRoom(1);
  }


}
