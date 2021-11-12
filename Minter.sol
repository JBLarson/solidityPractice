pragma solidity ^0.4.0;

contract Coin {
    // the 'public' keyword makes variables visible from outside
    address public minter;
    mapping (address => uint) public balances;
    
    //events allow light clients to react to changes efficiently
    event Sent(address from, address to, uint amount);
    
    //this constructor is run only when the contract is created
    
    function Coin() public {
        minter = msg.sender;
    }
    
    function mint(address receiver, uint amount) public {
        if (msg.sender != minter) return;
        balances[receiver] += amount;
    }
    
    function send(address receiver, uint amount) public {
        if (balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        Sent(msg.sender, receiver, amount);
    }
    
    
}
