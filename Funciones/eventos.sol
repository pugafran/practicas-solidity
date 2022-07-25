pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract Eventos{

    event eventito (string _nombrePersona);
    event eventito2 (string _nombrePersona, uint edad);
    event eventito3(string, uint, address, bytes32);

    
    function EmitirEvento(string memory _nombrePersona) public {
        emit eventito(_nombrePersona);
    }

    function EmitirEvento2(string memory _nombrePersona, uint _edad) public {
        emit eventito2(_nombrePersona, _edad);
    }

    function EmitirEvento3(string memory _nombrePersona, uint _edad) public {
        bytes32 hash_id = keccak256(abi.encodePacked(_nombrePersona, _edad, msg.sender));
        emit eventito3(_nombrePersona, _edad, msg.sender, hash_id);
    }





}