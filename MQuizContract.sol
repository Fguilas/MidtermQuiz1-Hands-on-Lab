// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.20;

contract SalaryCalculationContractImplementation {
    uint public age;
    uint public HrsWrk;
    uint public Rate;
    uint public TotSal;

    function setAge(uint _age) public {
        age = _age;
    }

    function setHrsWrk(uint _HrsWrk) public {
        HrsWrk = _HrsWrk;
    }

    function setRate(uint _Rate) public {
        Rate = _Rate;
    }

    function setTotSal(uint _TotSal) public {
        TotSal = _TotSal;
    }

    modifier onlyOwner() {
require(msg.sender == tx.origin, "Only the contract owner can call this function.");
_;
}

}

