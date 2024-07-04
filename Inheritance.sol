// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    uint public num;

    constructor(){
        num = 5;
    }
}

contract B is A{
 
    function getNum() public view  returns(uint){
        
        return num;
    }

}