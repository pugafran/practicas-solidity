pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract arrays{

    uint [5] vectorcito;

    string [2] vectorcito_string = ["H","O"];

    uint [] public vectorcito_dinamico;

function setX (uint x) public{
    vectorcito_dinamico.push(x);
    require(x > 10, "El número debe ser mayor de 10");
}
    

 }