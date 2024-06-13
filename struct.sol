// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract done {
    
    struct Person{
        string name;
        uint exp;
        string role;
    }

    Person public employe;

    function update(string memory _name, string memory _role, uint _exp) public {
            employe = Person(_name, _exp, _role);
    }

 
}

contract add{
    string public name;

    function cntrl(string memory _name)public {
        name =(_name);
    }
}