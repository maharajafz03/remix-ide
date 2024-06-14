// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract money{

    // recive() function use to getpaid ether from address
     receive() external payable { }

    function fund(address _recipient) public{
        payable (_recipient).transfer(address(this).balance);
    }

         // first address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
         // second address = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2

    function send(address _maga) public {
        bool result = payable(_maga).send(address(this).balance);
        require(result, "error in sending ether"); 
    }

    function call(address _navin) public {
        (bool won,)= payable(_navin).call{value: address(this).balance}("");
        require(won, "error in calling ether"); 
    }

}