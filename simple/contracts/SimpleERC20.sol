pragma solidity ^0.4.24; 

import "./ERC20/ERC20.sol"; 

contract SimpleERC20 is ERC20 {

    address private owner; 

    constructor() public {
        owner = msg.sender; 
    }
}