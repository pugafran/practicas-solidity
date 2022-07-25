pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract funciones{

    address [] public direcciones;

    function addAdress () public{

        direcciones.push(msg.sender);
    }
}