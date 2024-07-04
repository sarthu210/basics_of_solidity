// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
    //State Vairiable

    uint public myUint = 1;  //unsigned integer (0,1,2)
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    int public myInt = 1; //signed integer (-1 , 0 , +1)
    int256 public myInt256 = 1; 

    string public myString = "hello world!";
    bytes32 public myBytes32 = "hello world!";

    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    struct MyStruct{
        uint num;
        string name;
    }

    MyStruct public student = MyStruct(1, "Sarthak");

    //Local Vairiable
    function getCount() public pure returns(uint) {
        uint count = 1;
        return count;
    }
}