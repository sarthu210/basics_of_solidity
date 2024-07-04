// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConditionalStatements{
    uint[] public numbers = [1,2,3,4,5,6,7,8,9];

    function countEvenNumber() public view returns(uint){
        uint count;
        for(uint i = 0 ; i < numbers.length ; i++)
        {
            if(isEvenNUmber(numbers[i]))
            {
                count++;
            }
        }
        return count;
    }

    function isEvenNUmber(uint _number) public pure returns(bool){
        if(_number % 2 == 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}