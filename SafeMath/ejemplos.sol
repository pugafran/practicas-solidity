// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;
import "./SafeMath.sol";

contract CalculoSeguro {

    using SafeMath for uint;

    function suma(uint _a, uint _b) public pure returns (uint){
        return _a.add(_b);
    }

    function resta(uint _a, uint _b) public pure returns (uint){
        return _a.sub(_b);
    }    

    function dividir(uint _a, uint _b) public pure returns (uint){
        return _a.div(_b);
    }

}