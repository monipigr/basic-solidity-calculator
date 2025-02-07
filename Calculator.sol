/// SPDX-License-Identifier: LGPL-3.0-only

// Version
pragma solidity ^0.8.24;

contract Calculadora {

    // Variables
    uint256 public result;

    // Modifiers
    modifier checkPositiveNumbers(uint256 num1_, uint256 num2_) {
        if (num1_ < 0 || num2_ < 0) revert();
        _;
    }
    modifier checkNumber(uint256 num1_, uint256 num2_) {
        if (num1_ < num2_) revert();
        _;
    }

    // Events
    event Addition(uint256 result);
    event Substraction(uint256 result);
    event Multiplier(uint256 result);

    // External functions
    function addition(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_, num2_) returns(uint256 result_) {
        result_ = num1_ + num2_;
        result = result_;
        emit Addition(result);
    }

    function substraction(uint256 num1_, uint256 num2_) public checkNumber(num1_, num2_) checkPositiveNumbers(num1_, num2_) returns(uint256 result_) {
        result_ = substraction_logic(num1_, num2_);
        result = result_;
        emit Substraction(result);
    }

    function multiplier(uint256 num1_, uint256 num2_) public checkPositiveNumbers(num1_, num2_) returns(uint256 result_) {
        result_ = multiplier_logic(num1_, num2_);
        result = result_;
        emit Multiplier(result);
    }

    function division(uint256 num1_, uint256 num2_) public checkNumber(num1_, num2_) checkPositiveNumbers(num1_, num2_) {
        result = num1_ / num2_;
    }

    function percentage(uint256 num1_, uint256 percentage_) public {
        result = (num1_ * percentage_) / 100;
    }

    // Internal functions
    function substraction_logic(uint256 num1_, uint256 num2_) internal pure returns(uint256 result_) {
        result_ = num1_ - num2_;
    }

    function multiplier_logic(uint256 num1_, uint256 num2_) private pure returns(uint256 result_) {
        result_ = num1_ * num2_;
    }

}