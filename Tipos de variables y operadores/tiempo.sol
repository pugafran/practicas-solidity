pragma solidity ^0.5.0;

contract tiempo{
    
    uint public tiempo_actual = now;
    uint public segundo = 1 seconds;
    uint public minuto = 1 minutes;
    uint public hora = 1 hours;
    uint public dia = 1 days;

    function getTimePlusSec() public view returns(uint){

        return (tiempo_actual + 1 seconds);
    }

        function getTimePlusDay() public view returns(uint){

        return (tiempo_actual + 1 days);
    }

}