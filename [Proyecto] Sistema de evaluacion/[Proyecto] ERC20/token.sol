// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

import "./SafeMath.sol";
import "./IERC20.sol";


abstract contract token is IERC20{
    
    string public constant name = "Puga Coin";
    string public constant symbol = "PGC";
    uint public constant decimals = 18;

    using SafeMath for uint256;

    mapping (address => uint) balances;
    mapping (address => mapping (address => uint)) allowed;

    uint totalSupply_;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    constructor (uint256 initialSupply) public {
        totalSupply_= initialSupply;
        balances[msg.sender] = totalSupply_;
    }

    function totalSupply() public override view returns (uint256){
        return totalSupply_;
    }

    function balanceOf(address account) public override view returns (uint256){
        return balances[account];
    }

    function increaseTotalSupply(uint newTokensAmount) public {
        totalSupply_+= newTokensAmount;
        balances[msg.sender] += newTokensAmount;        
    }

    function allowance(address owner, address spender) public override view returns (uint256){
        return allowed[owner][spender]; 
    }

    function transfer(address to, uint256 amount)public override returns (bool){
        require(amount <= balances[msg.sender]);
        balances[msg.sender] = balances[msg.sender].sub(amount);
        balances[to] = balances[to].add(amount);
        emit Transfer(msg.sender, to, amount);
        return true;

    }

    function approve(address spender, uint256 amount)public override returns (bool){
        allowed[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address from, address to, uint256 amount) public override returns (bool){
        require(amount <= balances[from]);
        require(amount <= allowed[from][msg.sender]);
        
        balances[from] = balances[from].sub(amount);
        allowed[from][msg.sender] = allowed[from][msg.sender].sub(amount);
        balances[to] = balances[to].add(amount);

        return true;
    }




}






