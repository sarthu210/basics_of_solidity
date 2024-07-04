// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MynewContract{
    mapping(uint => string) public  names;
    mapping(uint => Student) public students;
    mapping(address => mapping(uint => Student)) public myStudents;

    struct Student {
        string class;
        string name;
    }
    
    constructor() {
        names[1] = "sarthak";
        names[2] = "soham";
        names[3] = "sharvari";
    }

    function addStudent(uint _id, string memory _class, string memory _name) public {
        students[_id] = Student(_class,_name);
    }

    function addMyStudent(uint _id, string memory _class, string memory _name) public {
        myStudents[msg.sender][_id] = Student(_class,_name);
    }

    

}