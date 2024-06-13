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

   // nexted mapping..

contract book{
    mapping (string => mapping (string => uint)) public bookprice;

    function bookinfo(string memory _author, string memory _bookname, uint _amount) public {
        bookprice[_author][_bookname] = _amount;
    }
}

   // 2x nexted mapping
   
contract mobile{
   mapping (uint => mapping (string => mapping (string => string))) public data;

   function add(string memory _mobile, string memory _model, string memory _ram, uint _amount) public {
    data[_amount][_mobile][_model] = _ram;
   }
}

  // struct & mapping combination;

contract Bikes {
    struct Bike {
        string brand;
        string model;
        string version;
        uint amount;
    }

    mapping (uint => Bike) public motor;

    function update(string memory _brand, string memory _model, string memory _version, uint _amount) public {
        Bike memory newBike = Bike({
            brand: _brand,
            model: _model,
            version: _version,
            amount: _amount
        });

        motor[_amount]= newBike;
    }
}