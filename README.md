# Supply chain & data auditing

This repository containts an Ethereum DApp that demonstrates a Supply Chain flow between a Seller and Buyer. The user story is similar to any commonly used supply chain process. A Seller can add items to the inventory system stored in the blockchain. A Buyer can purchase such items from the inventory system. Additionally a Seller can mark an item as Shipped, and similarly a Buyer can mark an item as Received.

The [writeup folder](https://github.com/abuaesh/CoffeeSupplyChain/tree/master/UML%20and%20write-ups) contains the sequence, class, activity and state diagrams, all in UML format. To open the source files for these diagrams, go to [draw.io](draw.io) and paste the link to this repository, then select the file you would like to open.

The deployed contracts can be viewed on Etherscan via the following links:
[SupplyChain Contract](https://rinkeby.etherscan.io/address/0xE797b763CC41C5dC8756d884c73fdb604C164788)
[ConsumerRole Contract](https://rinkeby.etherscan.io/address/0xc8FE753a01518E19a3e409a3926Ea6159742D074)
[RetailerRole Contract](https://rinkeby.etherscan.io/address/0xb19B9351a831F9B70206c49b80F5C47e6d5acE97)
[DistributorRole Contract](https://rinkeby.etherscan.io/address/0x7F43836AA840DCB03E7E193D9926D1dE1FBe8097)
[FarmerRole Contract](https://rinkeby.etherscan.io/address/0xcbb65d3b9b63fe49a8dfeea6e321834582d00ae9)
[Migrations Contract](https://rinkeby.etherscan.io/address/0x557A2216fb4B66A4826bd2A523cB33c41aFc5eBc)


SupplyChain Contract Address: 0xE797b763CC41C5dC8756d884c73fdb604C164788
SupplyChain Transaction Hash: 0xb88c5a56c6ccf05eb2b03f8b3f15958e9b3a540113d377968c77c56f7befe6c2
%SupplyChain Contract Hash:

The DApp User Interface when running should look like...

![truffle test](images/ftc_product_overview.png)

![truffle test](images/ftc_farm_details.png)

![truffle test](images/ftc_product_details.png)

![truffle test](images/ftc_transaction_history.png)


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Please make sure you've already installed ganache-cli, Truffle and enabled MetaMask extension in your browser.

```
Give examples (to be clarified)
```

### Installing

A step by step series of examples that tell you have to get a development env running

Clone this repository:

```
git clone https://github.com/udacity/nd1309/tree/master/course-5/project-6
```

Change directory to ```project-6``` folder and install all requisite npm packages (as listed in ```package.json```):

```
cd project-6
npm install
```

Launch Ganache:

```
ganache-cli -m "spirit supply whale amount human item harsh scare congress discover talent hamster"
```

Your terminal should look something like this:

![truffle test](images/ganache-cli.png)

In a separate terminal window, Compile smart contracts:

```
truffle compile
```

Your terminal should look something like this:

![truffle test](images/truffle_compile.png)

This will create the smart contract artifacts in folder ```build\contracts```.

Migrate smart contracts to the locally running blockchain, ganache-cli:

```
truffle migrate
```

Your terminal should look something like this:

![truffle test](images/truffle_migrate.png)

Test smart contracts:

```
truffle test
```

All 10 tests should pass.

![truffle test](images/truffle_test.png)

In a separate terminal window, launch the DApp:

```
npm run dev
```

## Built With

* [Ethereum](https://www.ethereum.org/) - Ethereum is a decentralized platform that runs smart contracts
* [IPFS](https://ipfs.io/) - IPFS is the Distributed Web | A peer-to-peer hypermedia protocol
to make the web faster, safer, and more open.
* [Truffle Framework](http://truffleframework.com/) - Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier.


## Authors

See also the list of [contributors](https://github.com/your/project/contributors.md) who participated in this project.

## Acknowledgments

* Solidity
* Ganache-cli
* Truffle
* IPFS
