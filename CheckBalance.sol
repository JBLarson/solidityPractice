pragma solidity ^0.4.0;

contract checkBalance {

    address creator;
    uint creatorbalance;

    function checkBalance() public 
    {
        creator = msg.sender; 								 // msg is a global variable
        creatorbalance = creator.balance;
    }

    function getContractAddress() constant returns (address) 
    {
        return this;
    }
	
    function getCreatorBalance() constant returns (uint)     // Will return the creator's balance AT THE TIME THIS CONTRACT WAS CREATED
    {
        return creatorbalance;
    }

    /**********
     Standard kill() function to recover funds 
     **********/
    
    function kill()
    { 
        if (msg.sender == creator)
            suicide(creator);  // kills this contract and sends remaining funds back to creator
    }
        
}
