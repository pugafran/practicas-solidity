pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract compararStrings{

    function comparar(string memory _a, string memory _b) public pure returns (bool){
        bytes32 hash_a = keccak256(abi.encodePacked(_a));
        bytes32 hash_b = keccak256(abi.encodePacked(_b));

        if (hash_a == hash_b){
            return true;
        }

        return false;
    }
}