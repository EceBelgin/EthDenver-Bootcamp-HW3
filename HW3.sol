// SPDX-License-Identifier: None

pragma solidity 0.8.17;


contract BootcampContract {

    uint256 number;

    address owner;
    address dead;

    constructor() {
        owner = msg.sender;
        dead = 0x000000000000000000000000000000000000dEaD;
    }



    function store(uint256 num) public {
        number = num;
    }


    function retrieve() public view returns (uint256){
        return number;
    }

    function returnAddress() external view returns(address) {
        if(msg.sender == owner)
            return dead;
        else
            return owner;
    }
}
