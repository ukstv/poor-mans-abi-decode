pragma solidity ^0.4.24;

contract Example {

  constructor() public {

  }

  function hello(bytes32 message,uint256 number,address addy) public returns (bool){
    emit Hello(message,number,addy);
    return true;
  }
  event Hello(bytes32 message,uint256 number,address addy);

  function abstracted(bytes data) public returns (bool success){
    uint256 value = 0;
    address to = address(this);
    uint256 gas = msg.gas;
    assembly {
      success := call(gas, to, value, add(data, 0x20), mload(data), 0, 0)
    }
  }

}
