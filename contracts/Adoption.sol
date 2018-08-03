pragma solidity ^0.4.17;

// 教程地址：https://truffleframework.com/tutorials/pet-shop
/*

## solidity语言的特性

- Solidity is a statically-typed language, meaning data types like strings, integers, and arrays must be defined.
- Solidity is a compiled language, meaning we need to compile our Solidity to bytecode for the Ethereum Virtual Machine (EVM) to execute.

## 编译

- 编译后会生成一个JSON文件，这个JSON文件包含了对这个Solidity文件的描述
- 在用户交互界面中也可以依据这个生成界面

*/
contract Adoption {

    address[16] public adopters;

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender;
        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }

}