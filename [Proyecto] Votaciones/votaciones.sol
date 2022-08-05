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
    bytes32 [] votantes;

    function setCandidato(string memory _nombre, uint _edad, string memory _id) public{
        
        id_candidato[_nombre] = keccak256(abi.encodePacked(_nombre, _edad, _id));
        candidatos.push(_nombre);
        
    
    }

    function getCandidatos() public view returns(string [] memory) {
        return candidatos;
    }

    function setVotos(string memory _nombre) public{
        
        for(uint i = 0; i < votantes.length; i++){
            require(votantes[i] != keccak256(abi.encodePacked(msg.sender)), "Ya has votado previamente");
        }

        votantes.push(keccak256(abi.encodePacked(msg.sender)));

        votos_candidato[_nombre]++;
        
    
    }

    function getVotos(string memory _nombre) public view returns (uint){
        return votos_candidato[_nombre];
    }

    function uint2str(uint _i) internal pure returns (string memory _uintAsString) {
        if (_i == 0) {return '0';}
    
        uint j = _i;
        uint len;
    
        while (j != 0) {
            len++;
            j /= 10;
        }
    
        bytes memory bstr = new bytes(len);
        uint k = len - 1;
    
        while (_i != 0) {
            bstr[k--] = byte(uint8(48 + _i % 10));
            _i /= 10;
        }
    
        return string(bstr);
    }
    

    function getResultados() public view returns (string memory){
        string memory resultados;
        for(uint i = 0; i < candidatos.length; i++){
            resultados = string(abi.encodePacked(resultados, "(", candidatos[i], ", ", uint2str(getVotos(candidatos[i])), ") -----"));
        }
        
        return resultados; 
    }

    function getGanador() public view returns (string memory){
       string memory ganador = candidatos[0];

       for(uint uwu = 0; uwu < candidatos.length; uwu++){
        if( votos_candidato[ganador] < votos_candidato[candidatos[uwu]]){
            ganador = candidatos[uwu];
        }
       }

        return ganador;

    }
}