// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Dances{

                                                           //visiblity
  //mapping structure like MAPPING(datatypes => valuetypes) public mapname;


  mapping(address => uint) public balance;

  function fund(uint) public payable{
    balance[msg.sender]=msg.value;
  }

 // you can use struct in mapping and also function and another mapping method thats called nexted mapping

  struct book{
    string author;
    string bookname;
    uint amount;
  }

    mapping (string => book) public books;

  function paid(string memory _author, string memory _bookname, uint _amount) public payable {
    books[_author]=book(_author, _bookname, _amount);
  }
}