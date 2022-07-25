pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

library Operaciones{

    function division(uint _i, uint _j) public pure returns(uint){
        require(_j > 0, "No podemos dividir por 0");
        return _i/_j;
    }

        function mult(uint _i, uint _j) public pure returns(uint){
        return _i * _j;
    }

}

contract calculos{

    using Operaciones for uint;

    function calculo(uint _a, uint _b) public pure returns (uint, uint){
        return ( _a.division(_b), _a.mult(_b) );
    }

}