pragma solidity >=0.4.25 <0.6.0;

import "./ProxyData.sol";
import "./KombuchaHeader.sol";

contract KombuchaDataInternal is ProxyData, KombuchaHeader {
    //address internal masterCopy;
    string internal flavor;
    uint internal fillAmount;
    uint internal capacity;
}