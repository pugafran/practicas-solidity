pragma solidity ^0.6.0;

contract Modifer{

    address public owner;

    constructor() public{
        owner = msg.sender;
        


    }

    modifier soloPropietario(){
        require(msg.sender == owner, "No tienes permisos para ejecutar la función");
        _;
    }

    function ejemplo() public soloPropietario {

        

    }

    struct Cliente{
        address direccion;
        string nombre;
    }

    mapping(string => address) clientes;

    function altaCliente(string memory _nombre) public {

        clientes[_nombre] = msg.sender;

    }

    modifier soloClientes(string memory _nombre){
        require(clientes[_nombre] == msg.sender);
        _;
    }

    function ejemplo2 (string memory _nombre) public soloClientes (_nombre){
        


    }

    modifier mayorEdad(uint _edadMinima, uint _edadUsuario){
        require(_edadUsuario >= _edadMinima);
        _;
    }

    function conducir(uint _edad) public mayorEdad(18, _edad){
        
    }

}