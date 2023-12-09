// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OpenSkull is ERC20, Ownable {
    mapping(address => bool) private hasOpened;
    uint public constant totalOpened = 1000 ;

    modifier canClaim() {
        require(balanceOf(msg.sender) >= totalOpened, "Insufficient balance");
        require(!hasOpened[msg.sender], "already claimed a head");
        _;
    }

    constructor(address initialOwner) ERC20("OpenSkull", "OSK") Ownable(initialOwner) {
        _mint(initialOwner, totalOpened);
    }

    function mintHead(address recipient, uint amount) public onlyOwner {
        _mint(recipient, amount);
    }

    function claimHead() public canClaim {
        hasOpened[msg.sender] = true;
        _burn(msg.sender, totalOpened);
    }

    function burnHead(uint amount) public {
        _burn(msg.sender, amount);
    }
}

