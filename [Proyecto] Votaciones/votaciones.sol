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
    byte32 [] votantes;

    function setCandidato(string memory _nombre, uint _edad, string memory _id) public{
        
        id_candidato[_nombre] = keccak256(abi.encodePacked(_nombre, _edad, _id));
        candidatos.push(_nombre);
        
    
    }

    function getCandidatos() public view returns(string [] memory) {
        return candidatos;
    }

    function setVotos(string memory _nombre) public{
        
        for(uint i = 0; i < votantes.length; i++){
            require(votantes[i] != keccak256(abi.encodePacked(msg.sender), "Ya has votado previamente"));
        }

        votantes.push(keccak256(abi.encodePacked(msg.sender)));

        votos_candidato[_nombre]++;
        
    
    }

    function getVotos(string memory _nombre) public view returns (uint){
        return votos_candidato[_nombre];
    }

}