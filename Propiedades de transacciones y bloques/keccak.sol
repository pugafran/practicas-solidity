pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;  
   
contract hash{   
   
   //Computo del hash de datos:
   //encodePacked lo pasa a Bytes


    function CalcularHash(string memory _cadena) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena));
    }
        
    function CalcularHash2(string memory _cadena, uint _k, address _direccion) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion));
    }

    function CalcularHash3(string memory _cadena, uint _k, address _direccion) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion, "hola"));
    }



}