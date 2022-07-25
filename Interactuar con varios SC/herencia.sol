pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract Banco{

    struct cliente{
        string _nombre;
        address drieccion;
        uint dinero;
    }

    mapping (string => cliente) public clientes;

    function crearCliente(string memory _nombre) public {
        clientes[_nombre] = cliente(_nombre, msg.sender, 0);
    }

}

contract Cliente is Banco{

    function altaCliente(string memory _nombre) public {
        crearCliente(_nombre);
    }

    function ingresarDinero(string memory _nombre, uint _cantidad) public {
        clientes[_nombre].dinero += _cantidad;
    }

    function retirarDinero(string memory _nombre, uint _cantidad) public returns (bool){

        if (clientes[_nombre].dinero - _cantidad > 0){

            clientes[_nombre].dinero -= _cantidad;
            return true;

        }

            return false;

    }


    
}