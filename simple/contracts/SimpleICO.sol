pragma solidity ^0.4.24;

contract SimpleICO {
    address private owner;

    mapping(address => uint256) public balanceOf;

    // constructor
    constructor(uint256 _initialSupply) public{
        owner = msg.sender;

        balanceOf[owner] = _initialSupply;
    } 

    function transfer(address _to, uint256 _value) public{
        require(balanceOf[msg.sender] >= _value, "sender balance can less then input value");
        require(balanceOf[_to] + _value >= balanceOf[_to], "check for overflows");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
    }

    function getBalance(address _addr) public view returns(uint256) {
        return balanceOf[_addr];
    }
}