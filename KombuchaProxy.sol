pragma solidity >=0.4.25 <0.6.0;

import "./Proxy.sol";
import "./KombuchaDataInternal.sol";

contract KombuchaProxy is Proxy, KombuchaDataInternal {
    constructor(address proxied, string memory _flavor, uint _fillAmount, uint _capacity) public Proxy(proxied) {
        // the body is identical to our original constructor!
        require(_fillAmount <= _capacity && _capacity > 0);
        flavor = _flavor;
        fillAmount = _fillAmount;
        capacity = _capacity;
    }
}