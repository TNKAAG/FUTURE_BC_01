// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.27;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract FutureCoin is ERC20, ERC20Permit {
    constructor(uint256 initialSupply) ERC20("FutureCoin", "FCoin") ERC20Permit("FutureCoin") {
        _mint(msg.sender, initialSupply);
    }
}