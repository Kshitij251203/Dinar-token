// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract MyOwnERC20Token is ERC20 {
    constructor() ERC20("Dinar", "DNR")  {
        _mint(msg.sender, 1000 * 10 ** decimals()); 
    }

    function mint(address recipient, uint256 amount) external  {
        _mint(recipient, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
