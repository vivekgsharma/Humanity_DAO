// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";


// I am extending all the class like ERC20 ,ERC20permit and ERC20Votes so that the code is clean
// mytoken is inheriting all the contracts like ERC20 ,ERC20permit and ERC20Votes so that 
// we can use all the funtions and properties of that class

contract MyToken is ERC20, ERC20Permit, ERC20Votes {
    constructor() ERC20("Human", "HMN") ERC20Permit("MyToken") {}

    // The functions below are overrides required by Solidity.

    function _afterTokenTransfer(address from, address to, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._burn(account, amount);
    }
}