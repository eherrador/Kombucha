pragma solidity >=0.4.25 <0.6.0;

import "./KombuchaData.sol";

contract Kombucha is KombuchaData {
    function fill(uint amountToAdd) public {
        uint newAmount = fillAmount + amountToAdd;
        require(newAmount > fillAmount && newAmount <= capacity);
        fillAmount = newAmount;
        emit FilledKombucha(amountToAdd, newAmount);
    }
    
    function drink(uint amountToDrink) public returns (bytes32) {
        uint newAmount = fillAmount - amountToDrink;
        require(newAmount < fillAmount);
        fillAmount = newAmount;
        emit DrankKombucha(amountToDrink, newAmount);
        
        // this mess of hashes just here to pad out the bytecode
        //return keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(keccak256(amountToDrink))))))))))))))))))))))))))))))))))))))))))))))))));
    }
}