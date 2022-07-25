pragma solidity ^0.5.0;

contract ejemplos_enumeraciones{

    enum estado{ON, OFF}

    estado state;

    function encender() public{
        state = estado.ON;
    }

    function setEstado(uint _k) public{
        state = estado(_k);
    }

    function getEstado() public view returns(estado){
        return state;
    }

    enum direcciones{ARRRIBA,ABAJO, DERECHA, IZQUIERDA}

 
    



}