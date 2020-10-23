pragma solidity ^0.4.25;

contract report_card
{
	string public name;
	uint public rollno;
	uint public batch;
	uint public JS;
	uint public python;
	uint public blockchain;
	uint public english;
	string public status;
	
	constructor() public
	{
		name = "Anil";
    	rollno = 7;
    	batch = 1;
    	JS = 95;
    	python = 98;
    	blockchain = 98;
    	english = 97;
    	status = "passed";
	
	}
	
	 
	
	function see_result() view public returns(string,uint,uint,uint,uint,uint,uint,string)
	{
		return (name, rollno, batch, JS, python, blockchain, english, status);
	}

}