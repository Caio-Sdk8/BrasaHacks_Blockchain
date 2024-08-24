//SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
contract BTGToken is ERC20("Btg Token",  "BTG"), Ownable{
    constructor() Ownable(msg.sender) {} // This line adds a new constructor that calls the base constructor of Ownable with msg.sender as argument   

    address to = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
                 
    function mintFifty() public onlyOwner {
        _mint(msg.sender, 500);
    }

    function balanceOfAccount(address account) public view returns(uint) {
        return balanceOf(account);
    }
}