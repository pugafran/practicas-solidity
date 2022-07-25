pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract mappings{

    mapping(address => uint) public elegirNumero;

    function insertar(uint _numero) public {
        elegirNumero[msg.sender] = _numero;
    }

    function consultarMapping() public view returns(uint){
        return elegirNumero[msg.sender];
    }


    mapping(string => uint) cantidad_dineros;

    struct Persona{
        string nombre;
        uint edad;
    }

    mapping(uint => Persona) personas;

    function setDNI(uint _DNI, string memory _nombre, uint _edad) public {

        personas[_DNI] = Persona(_nombre, _edad);
    }

    function getPersona(uint dni) public view returns(Persona memory){

            return personas[dni];

    }
}