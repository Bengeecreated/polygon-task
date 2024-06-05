const hre = require("hardhat");
require("dotenv").config();

async function main() {
  const StoneNFTFactory = await hre.ethers.getContractFactory("StoneNFT");

  const stoneNft = await StoneNFTFactory.attach(process.env.CONTRACT_ADDRESS);

  const mintTx = await stoneNft.safeMint(5);
  await mintTx.wait();

  console.log(
    "Successfully minted: " +
      (await stoneNft.balanceOf(process.env.WALLET_ADDRESS)) +
      " Stone NFTs to " +
      process.env.WALLET_ADDRESS
  );
  console.log(await stoneNft.promptDescription());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});