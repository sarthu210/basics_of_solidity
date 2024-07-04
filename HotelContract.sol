// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelContract{

    address payable public owner;

    enum Statuses { Vacant, Occupide} Statuses public currectStatus;

    event Occupy(address _occupant, uint _value);

    constructor(){
        owner = payable(msg.sender);
        currectStatus = Statuses.Vacant;
    }

    modifier checkTheAmount(uint _amount){
        require(msg.value >= _amount, "The enough amount is not selected");
        _;
    }

    modifier isOccupied{
        require(currectStatus == Statuses.Vacant, "The booking is full!");
        _;
    }

    function book() public payable checkTheAmount(2 ether) isOccupied {
        currectStatus = Statuses.Occupide;

        (bool sent , bytes memory data) = owner.call{value: msg.value}("");

        emit Occupy(msg.sender, msg.value);
    }
}