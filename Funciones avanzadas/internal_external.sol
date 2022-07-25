pragma solidity ^0.6.0;

contract Comida{

    struct plato{
        string nombre;
        string ingredientes;
        uint tiempo;
    }

    plato [] platos;
    
    mapping(string => string) ingredientes;

    function crearPlato(string memory _nombre, string memory _ingredientes, uint _tiempo) internal {

        platos.push(plato(_nombre,_ingredientes,_tiempo));
        ingredientes[_nombre] = _ingredientes;

    }
    function getIngredientes(string memory _nombre) internal view returns(string memory){

        return ingredientes[_nombre];
    }

}

contract Sandwich is Comida{

    function crearSandwich(string calldata _ingredientes, uint _tiempo) external {
        crearPlato("Sandwich", _ingredientes, _tiempo);

    }

        function getIngredientes() external view returns(string memory){

        return ingredientes["Sandwich"];
    }

}
