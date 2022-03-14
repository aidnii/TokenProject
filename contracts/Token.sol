// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

contract Token {
    string public name = "AIDNI";
    string public symbol = "AID";
    uint256 public decimals = 18;
    uint256 public totalSupply = 1000000000000000000000000;

    mapping(address => uint256) public balanceOf;

    constructor(string memory _name, string memory _symbol, uint _decimals, uint _totalSupply){
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address _to, uint256 _value) external returns (bool success) {
        
    }
}

