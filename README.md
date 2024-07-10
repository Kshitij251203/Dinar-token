# MyOwnERC20Token

MyOwnERC20Token is an ERC20 token implemented using Solidity and the OpenZeppelin library. The token is named "Dinar" with the symbol "DNR". This contract allows for minting and burning of tokens.

## Features

- ERC20 token standard
- Minting functionality
- Burning functionality

## Getting Started

These instructions will help you deploy and interact with the MyOwnERC20Token contract using the Remix IDE.

### Prerequisites

- Web browser
- Internet connection

### Deployment using Remix

1. **Open Remix IDE**

    Go to [Remix IDE](https://remix.ethereum.org/).

2. **Create a new file**

    - In the Remix IDE, create a new file named `MyOwnERC20Token.sol`.
    - Copy and paste the following Solidity code into `MyOwnERC20Token.sol`:

    ```solidity
    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.0;

    import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

    contract MyOwnERC20Token is ERC20 {
        constructor() ERC20("Dinar", "DNR")  {
            _mint(msg.sender, 1000 * 10 ** decimals()); 
        }

        function mint(address recipient, uint256 amount) external {
            _mint(recipient, amount);
        }

        function burn(uint256 amount) external {
            _burn(msg.sender, amount);
        }
    }
    ```

3. **Compile the contract**

    - Select the `Solidity Compiler` tab on the left sidebar.
    - Ensure the compiler version is set to `0.8.0` or a compatible version.
    - Click on the `Compile MyOwnERC20Token.sol` button.

4. **Deploy the contract**

    - Select the `Deploy & Run Transactions` tab on the left sidebar.
    - Choose the `Injected Web3` environment if you are using MetaMask or another web3 provider, or select `JavaScript VM (London)` for a local environment.
    - Ensure the contract to deploy is set to `MyOwnERC20Token`.
    - Click on the `Deploy` button.
    - Confirm the transaction in MetaMask if prompted.

### Interacting with the Contract

Once deployed, you can interact with the contract using the Remix interface.

1. **Mint Tokens**

    - In the `Deployed Contracts` section, expand your deployed contract.
    - Find the `mint` function.
    - Enter the recipient address and amount (in wei) to mint.
    - Click on the `transact` button.

2. **Burn Tokens**

    - In the `Deployed Contracts` section, expand your deployed contract.
    - Find the `burn` function.
    - Enter the amount (in wei) to burn.
    - Click on the `transact` button.
