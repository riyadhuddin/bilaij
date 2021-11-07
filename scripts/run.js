const main = async () => {
    const gameContractFactory = await hre.ethers.getContractFactory('OhBilaiJ');
    const gameContract = await gameContractFactory.deploy(
        ["Morium","Salih","Porimoni"],
        ["https://cdn.pixabay.com/photo/2020/11/06/11/35/nature-5717545_1280.jpg",
        "https://cdn.pixabay.com/photo/2020/11/06/11/35/tree-5717544_1280.jpg",
      "https://cdn.pixabay.com/photo/2020/11/06/11/29/nature-5717530_1280.jpg"],
        [100,200,300],
        [100,50,25]
    );
    await gameContract.deployed();
    console.log("Contract deployed to:", gameContract.address);
    let txn;
    txn = await gameContract.mintCharNFT(2);
    await txn.wait();
    let returnedTokenUri = await gameContract.tokenURI(1);
    console.log("Token URI:", returnedTokenUri);
  };
  
  const runMain = async () => {
    try {
      await main();
      process.exit(0);
    } catch (error) {
      console.log(error);
      process.exit(1);
    }
  };
  
  runMain();