// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract notas{

    address public profesor;

    constructor () public {
        profesor = msg.sender;
    }

    mapping (bytes32 => uint) Notas;

    string [] revisiones;

    event alumno_evaluado(bytes32);
    event evento_revision(string);

    function setNotas(string memory _id, uint _nota) public StatusProfesor(msg.sender){

        bytes32 hash_id = keccak256(abi.encodePacked(_id));
        Notas[hash_id] = _nota;

        emit alumno_evaluado(hash_id);

    }

    modifier StatusProfesor(address _address){
        require(_address == profesor, "No tienes permisos de Profesor");
        _;
    }

    function getNotas(string memory _id) public view returns (uint) {
        return uint(Notas[keccak256(abi.encodePacked(_id))]);
    }

    function revision(string memory _id) public {
        revisiones.push(_id);
        emit evento_revision(_id);

    }

    function getRevisiones() public view StatusProfesor(msg.sender) returns (string [] memory){
        return revisiones;
    }


}