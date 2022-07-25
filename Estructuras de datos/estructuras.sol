pragma solidity ^0.6.0;

contract uwu{

    struct cliente{

        uint id;
        string nombre;
        string dni;
        string mail;
        uint telefono;
        uint tarjeta_credito;
        uint numero_secreto;

    }

    struct producto{

        string nombre;
        uint precio;
        string desc;
        uint id;
    }

    struct ONG{
       address ong;
       string nombre; 
       causa cause;
    }

    struct causa{
        uint id;
        string nombre;
        uint dinero_asociado;
    }


    cliente cliente_1 = cliente(1, "Fran", "58448627S", "franciscplgi36@gmail.com", 711750579,1234,123);

    producto banana = producto("banana", 2,"es una banana", 1);

    ONG franpu = ONG(0x10Dd48A9Dda3E462C80c86E9c30c613324c321F0, "Franpupu", causa(1,"Fck Diabetes", 1000000));

}