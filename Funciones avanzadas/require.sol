pragma solidity ^0.6.0;

contract Require{


    function password(string memory pass) public pure returns (string memory){
        require(keccak256(abi.encodePacked(pass)) == keccak256(abi.encodePacked("123")), "Contraseña incorrecta");
        return "contraseña correcta";

    }

    uint public cartera = 0;
    uint tiempo = 0;

    function pagar(uint cantidad) public returns (uint){
        require(now > tiempo + 5 seconds, "Aún no puedes pagar");
        tiempo = now;
        cartera += cantidad;
        return cartera;
    }

    string [] nombres;

}