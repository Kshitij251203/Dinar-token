// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyOwnERC20Token is ERC20 , Ownable{
    constructor() ERC20("Dinar", "DNR") Ownable(msg.sender) {
        _mint(msg.sender, 1000 * 10 ** decimals()); 
    }

    function mint(address recipient, uint256 amount) external onlyOwner {
        _mint(recipient, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function customTransfer(address from, address to, uint256 amount) public returns (bool) {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _transfer(from, to, amount);
        return true;
    }
}
