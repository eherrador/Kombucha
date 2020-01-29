pragma solidity >=0.4.25 <0.6.0;

import "./ProxyData.sol";
import "./KombuchaHeader.sol";

contract KombuchaData is ProxyData, KombuchaHeader {
    string public flavor;
    uint public fillAmount;
    uint public capacity;
}