pragma solidity >=0.5.17 <0.7.3;

contract LotteryContract {
    
    
    address owner = 0xda822dfd0846F4F9C830C2fB3687e3C32D70d465;
    uint total_amount;
    uint winner_index = 999999;
    address winner_address;
    address[] participants;
    
    
    modifier onlyOwner()
    {
        require(msg.sender == owner, "Only owner can access this.");
        _;
    }
    
    function participate() payable public{
        require(msg.value > 1 ether, "Please use more than 1 ether");
        participants.push(msg.sender);
    }
    
    function potValue() public view returns(uint) {
        return address(this).balance;
    }
    
    function Participants_List() public view returns(address[] memory) {
        return participants;
    }
    
    
    function luckyWinner() public payable onlyOwner () {
        
        winner_index = uint(keccak256(abi.encodePacked(block.difficulty, now, participants))) % participants.length;
        winner_address = participants[winner_index];
        address payable winner = address(uint160(participants[winner_index]));
        winner.transfer(address(this).balance);
        participants = new address[](0);
        // return winner;
    }
    
    function show_winner() public view returns(address)
    {
        if(winner_index != 999999)
        return winner_address;
        else
        return 0x0000000000000000000000000000000000000000;
    }
    
    
}