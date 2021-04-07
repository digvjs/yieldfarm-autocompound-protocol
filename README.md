# Fastyield Protocol

Fastyield protocol for optimising yield by autocompounding.

### Pre-requisites

* Truffle v5.2.4 (core: 5.2.4)
* Solidity - 0.6.12 (solc-js)
* Node v14.16.0
* Web3.js v1.2.9

## Setup Process

1. Clone the repo and cd to the project directory.

2. Install dependencies
    ```
    npm i
    ```

3. Setup .env file
    ```
    cp .env.example .env
    ```
    Update config variables from the .env file as per your environment.
    ```
    MNENOMIC            # MNEMONIC/Private key of your wallet
    BSCSCAN_API_KEY     # Needed to verify contract
    ```

4. To compile and deploy contracts
    ```
    # Deploy on BSC Testnet
    npx truffle compile
    npx truffle migrate --reset --network=bscTestnet

    # Deploy on BSC Mainnet
    npx truffle compile
    npx truffle migrate --reset --network=bscMainnet
    ```

5. To verify the smart contract using truffle and bscscan API -
    ```
    # Verify on BSC testnet
    npx truffle run verify {TokenContractName}@{DeployedAddress} --network=bscTestnet

    # Verify on BSC mainnet
    npx truffle run verify {TokenContractName}@{DeployedAddress} --network=bscMainnet
    ```

5. To run unit test from `/test` directory -
    ```
    npx truffle test
    ```

You may wish to use the ABI of the deployed contracts in your frontend application, those you will find in directory `/build` after running the `npx truffle migrate --reset --network=<network>` script in step 4.