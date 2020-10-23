pragma solidity ^0.4.25;

contract car_registration
{
    string public company;
    string public model_name;
    uint public model_id;
    string public color;
    string public car_type;
	
	function register_car(string new_company, string new_model_name, uint new_model_id, string new_color, string new_car_type) public
	{
	    company = new_company;
	    model_name = new_model_name;
	    model_id = new_model_id;
	    color = new_color;
	    car_type = new_car_type;
	}
	
	function see_car_registration() view public returns(string, string, uint, string, string)
	{
		return (company, model_name, model_id, color, car_type);
	}

}