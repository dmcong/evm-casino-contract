const Casino = artifacts.require("Casino");

contract("Casino", ([deployer, voter1, voter2]) => {
  let ROOM_ID;

  it("should initialize room", async () => {
    const casinoInstance = await Casino.deployed({ from: deployer });
    const roomId = await casinoInstance.initializeRoom({ from: deployer });
    console.log("roomId", roomId.toString());
    const owner = await casinoInstance.getOwner.call();
    console.log(owner);
    console.log(deployer);

    // ROOM_ID = roomId;
    // console.log("roomId", roomId);
    // await casinoInstance.faucet.call(ROOM_ID, accounts[0], 1000);
  });

  // it("should join room", async () => {
  //   const casinoInstance = await Casino.deployed();
  //   await casinoInstance.joinRoom.call(ROOM_ID);
  // });

  // it("should faucet", async () => {
  //   const casinoInstance = await Casino.deployed();
  //   // console.log("tx.origin", accounts);
  //   await casinoInstance.faucet.call(1, accounts[0], 1000);
  // });
});
