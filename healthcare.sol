pragma solidity ^0.4.25;

contract healthcare
{
	string public name;
	string public email;
	uint public mobile;
	string public doc_name;
	uint public doc_id;
	string public symptoms;
	string public medications;
	uint public age;
	
	function health_record(string new_name, string new_email, uint new_mobile, string new_docname, uint new_docid, string new_symptoms,string new_medications,uint new_age) public
	{
	    name = new_name;
	    email = new_email;
	    mobile = new_mobile;
	    doc_name = new_docname;
	    doc_id = new_docid;
	    symptoms = new_symptoms;
	    medications = new_medications;
	    age = new_age;
	}
	
	function see_health_record() view public returns(string, string, uint, string, uint, string, string, uint)
	{
		return (name, email, mobile, doc_name, doc_id, symptoms, medications, age);
	}

}