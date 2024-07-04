// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayContract{
    uint[] public myIntArrya = [1,2,3,4];
    string[] public myStringArrya = ["orange","apple","banana"];
    string[] public values;
    uint[][] public towDArray = [[1,2,3],[4,5,6]];

    function addValue(string memory _value) public{
        values.push(_value);
    }

    function getLength() public view returns(uint) //view allowed to read state variables.
    {
        return values.length;
    }
}