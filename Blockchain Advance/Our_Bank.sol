pragma solidity >=0.5.13 <0.7.3;
// SPDX-License-Identifier: MIT

contract ourBank {
    
    function deposit() public payable {
    }
    
    function withdraw(uint amount) public {
        address payable to = msg.sender;
        to.transfer(amount);
    }
    
    function balance() public view returns(uint) {
        return address(this).balance;
    }
}