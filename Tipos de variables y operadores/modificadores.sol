pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract public_private_internal{

    uint public mi_entero = 21;
    string public nombre = "Franpu";
    address public owner;

    constructor() public{
        owner = msg.sender;
    }

    uint private mi_entero_privado = 10;
    bool private flag = true;

    function test(uint _k) public{

        mi_entero_privado = _k;
    }

    bytes32 internal hash = keccak256(abi.encodePacked(nombre));
    address internal direccion = 0x10Dd48A9Dda3E462C80c86E9c30c613324c321F0;


}