const { ethers } = require("hardhat");

async function main() {
  const Election = await ethers.getContractFactory("Election");
  const instance = await Election.deploy();
  await instance.deployed().then(function(){
    console.log("Election contract Deployed at : ",instance.address);
  });
}

main();