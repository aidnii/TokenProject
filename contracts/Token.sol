// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

contract Token {
    
    // The variables
    string public name = "AIDNI";
    string public symbol = "AID";
    uint256 public decimals = 18;
    uint256 public totalSupply = 1000000000000000000000000;

   // Keeping track of balances and approved allowances
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    // Events - creating events on state changes
    event Transfer(address indexed from, address indexed to, uint256 value); 
    event Approval(address indexed owner, address indexed spender, uint256 value);

    constructor(string memory _name, string memory _symbol, uint _decimals, uint _totalSupply){
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = totalSupply;
    }

    /// @notice transfer amount of tokens to an address
    /// @param _to receiver of token
    /// @param _value amount value of token to send
    /// @return success as true, for transfer
    function transfer(address _to, uint256 _value) external returns (bool success) {
        require(balanceOf[msg.sender] >= _value);
        balanceOf[msg.sender] = balanceOf[msg.sender] - (_value);
        balanceOf[_to] = balanceOf[_to] + (_value);
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
}

