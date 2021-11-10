pragma solidity ^0.4.0;

contract Bidder {
    
    // create state variables
    string public name;
    uint public bidAmount = 20000;
    bool public eligible;
    uint constant minBid = 1000;



    // setter functions to update state variables
    function setName(string nm) public {
        name = nm;
    }


    function setBidAmount(uint x) public {
        bidAmount = x;
    }
    
    
    // eligibility function using if logic
    function determineEligibility() public {
        if (bidAmount >= minBid ) eligible = true;
        else eligible = false;
    }
    
    

  
}
