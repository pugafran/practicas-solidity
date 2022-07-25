pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract CausasBeneficas{

    struct Causa{
        uint id;
        string nombre;
        uint precio_objetivo;
        uint cantidad_recaudada;
    }

    uint contador_causas = 0;
    mapping (string => Causa) causas;

    function crearCausa(string memory _nombre, uint _precio_objetivo) public payable {
        
        causas[_nombre] = Causa(contador_causas, _nombre, _precio_objetivo, 0);
        contador_causas++;
    }

    function ObjetivoCumplido(string memory _nombre, uint _donar) private view returns(bool){


        Causa memory causa = causas[_nombre];

        if(causa.precio_objetivo >= (causa.cantidad_recaudada + _donar)){
            return true;
        }

         return false;

    }

    function donar(string memory _nombre, uint _cantidad) public returns(bool){

        if(ObjetivoCumplido(_nombre, _cantidad)){
            causas[_nombre].cantidad_recaudada = causas[_nombre].cantidad_recaudada + _cantidad;
            return true;
        }
            return false;
    }

    function comprobar_causa(string memory _nombre) public view returns (bool, uint){
        
        Causa memory causa = causas[_nombre];

        if(causa.cantidad_recaudada >= causa.precio_objetivo){
            return (true, causa.cantidad_recaudada);
        }
            return (false, causa.cantidad_recaudada);
    }
}