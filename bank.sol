pragma solidity ^0.6.0;

contract bank
{
	int bal;
	constructor() public
	{
		bal = 1;
	}
	function get_balance() view public returns(int)
	{
		return bal;
	}

	function withdraw(int amt) public
	{
		bal = bal - amt;
	}
	function deposit(int amt) public
	{
		bal = bal + amt;
	}
}