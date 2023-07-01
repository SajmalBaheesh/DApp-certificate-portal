// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Cert{

    //Certificate issuer
    address public admin;

    constructor(){
        admin = msg.sender;
    }

    struct Certificate {
        string name;
        string course;
        string grade;
        string date;
    }


    modifier onlyadmin() {
        require(admin == msg.sender, "Acess denied");
        _;
    }

    //Store multiple certificate
    mapping (string => Certificate) public Certificates;

    //only admin should issue cert
    function issue(string memory _id, string memory _name, string memory _course, string memory _grade, 
                                    string memory _date) public onlyadmin {
        Certificates[_id] = Certificate(_name,_course,_grade,_date);
    }
}
