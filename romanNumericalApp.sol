// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Kata {
    string[] romanThousand = ["", "M", "MM", "MMM"];
    string[] romanHundred = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"];
    string[] romanTens = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"];
    string[] romanUnits = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"];

    function solution(uint n) public view returns (string memory) {
        require(n > 0 && n < 4000, "Input is out of scope");

        string memory roman;
        roman = string(abi.encodePacked(roman, romanThousand[n / 1000 % 10]));
        roman = string(abi.encodePacked(roman, romanHundred[n / 100 % 10]));
        roman = string(abi.encodePacked(roman, romanTens[n / 10 % 10]));
        roman = string(abi.encodePacked(roman, romanUnits[n % 10]));

        return roman;
    }
}

