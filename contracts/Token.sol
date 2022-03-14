// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

contract Token {
    string public name = "AIDNI";
    string public symbol = "AID";
    uint256 public decimals = 18;
    uint256 public totalSupply = 1000000000000000000000000;

    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor(string memory _name, string memory _symbol, uint _decimals, uint _totalSupply){
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address _from, address _to, uint256 _value) external returns (bool success) {
        balanceOf[msg.sender] = balanceOf[_from] - (_value);
        balanceOf[_to] = balanceOf[_to] + (_value);
    }
}

