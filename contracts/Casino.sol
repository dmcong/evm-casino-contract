// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// This is just a simple example of a coin-like contract.
// It is not ERC20 compatible and cannot be expected to talk to other
// coin/token contracts.

contract Casino is Ownable {
    IERC20 public token;
    uint constant ZERO = 0;

    uint roomsSize = 0;
    mapping(uint => Room) rooms;
    struct Room {
        address owner;
        // mapping(address => Player) players;

    }

    struct Player {
        uint totalBalnce;
        uint balance;
        uint betAmount;
    }

    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    constructor() {}

    function initializeRoom() public returns (uint sufficient) {
        roomsSize++;
        Room storage room = rooms[roomsSize];
        room.owner = msg.sender;
        return roomsSize;
    }

    function joinRoom(uint roomId) public returns (bool sufficient) {
        // Room storage room = rooms[roomId];
        // room.players[msg.sender] = Player(ZERO, ZERO, ZERO);
        return true;
    }

    function faucet(
        uint roomId,
        address receiver,
        uint amount
    ) public returns (bool sufficient) {
        Room storage room = rooms[roomId];
        require(room.owner == msg.sender, "Not have permission!!!");

        // Player storage player = room.players[receiver];
        // player.totalBalnce += amount;
        // player.balance += amount;

        return true;
    }

    function getOwner() public pure  returns(Room memory rooms) {
        return rooms;
    }


}
