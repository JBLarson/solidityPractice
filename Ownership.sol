pragma solidity ^0.4.0;

contract Testing {
    
    // by making variables public (i.e. 'string public word'), the EVM creates getters for the variables
    
    string word = "bird";
    
    uint number = 42;


    //use modifiers to restrict everyone but the owner from interacting with functions
    address owner;


    // this function is a constructor
    function Testing() {
        word = "Winter";
        number = 42;
        owner = msg.sender;
    }
    
    /*modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }*/
    
    modifier onlyOwner {
        if (msg.sender != owner) {
            throw;
        }
        // the body of the function with this modifier is run in the placeholder area
        _;
    }


    function getWord() constant returns (string) {
        return word;
    }


    function getOwner() constant returns (address){
        return owner;
    }


    // setter function assigns a new value to an existing variable
    function setWord(string w) onlyOwner {
        word = w;
    }


}

