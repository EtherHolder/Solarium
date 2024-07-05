// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract DEX {
    IERC20 public token;

    constructor(address tokenAddress) {
        token = IERC20(tokenAddress);
    }

    function swap(uint256 tokenAmount) public {
        require(token.balanceOf(msg.sender) >= tokenAmount, "Insufficient token balance");
        token.transferFrom(msg.sender, address(this), tokenAmount);
        // Swap logic here
    }
}