// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract votacion{

    address public owner;

    constructor () public {
    owner = msg.sender;
                           
    }

    mapping (string => bytes32) id_candidato;
    mapping (string => uint) votos_candidato;

    string [] candidatos;

    

}