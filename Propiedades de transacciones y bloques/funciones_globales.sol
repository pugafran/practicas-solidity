pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract funciones_globales{

    function MsgSender() public view returns(address){
        return msg.sender;
    }

    function BlockCoinbase() public view returns(address){
        return block.coinbase;
    }

    function BlockDifficulty() public view returns(uint){
        return block.difficulty;
    }

    function BlockNumber() public view returns(uint){
        return block.number;
}

    function MsgSig() public view returns(bytes4){
        return msg.sig;
    }

    function Now() public view returns(uint){
        return now;
    }


}