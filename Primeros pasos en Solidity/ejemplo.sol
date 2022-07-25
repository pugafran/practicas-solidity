/// @title Ejemplo
/// @author Francisco Puga Lojo
/// @notice Hay que explicar que hace


pragma solidity > 0.5.0 <= 0.8.0;
//pragma solidity ^0.8.0

import "./ERC20.sol";

contract contrato {

//Dirección de la persona que despliega el contrato
address owner;

ERC20Basic token;

/*
El constructor se ejecuta una vez al principio con datos
del contrato.
*/

constructor() public{
    owner = msg.sender;
    token = new ERC20(1000);
}






}



