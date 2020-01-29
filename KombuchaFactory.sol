pragma solidity >=0.4.25 <0.6.0;

import "./Kombucha.sol";
import "./KombuchaProxy.sol";

contract KombuchaFactory {
    Kombucha private masterCopy;
    
    constructor(Kombucha _masterCopy) public {
        masterCopy = _masterCopy;
    }
    
    function createKombucha(string memory flavor, uint fillAmount, uint capacity) public returns (Kombucha kombucha) {
        return Kombucha(new KombuchaProxy(masterCopy, flavor, fillAmount, capacity));
        
        //kombucha = Kombucha(new Proxy(masterCopy));
        //kombucha.init(flavor, fillAmount, capacity);
    }
}