// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//functions reffer ://datatypes.sol

contract function{

function tap() public view returns (uint) {
   return block.chainid;
}


function click() public view returns (uint) {
   return block.number;
}

}