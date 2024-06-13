// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayContract {

   uint [] public num;

   // Push a value into the array
   function push(uint value) public {
       num.push(value);
   }

   // Pop the last value from the array
   function pop() public {
       require(num.length > 0, "Array is empty");
       num.pop();
   }

   // Get the length of the array
   function show() public view returns (uint) {
       return num.length;
   }
}
