
pragma solidity ^0.6.2;

contract MerkelRoots {
    uint64 constant epochStart = 0;
    uint64 constant epochEnd = 387;

    // TODO ROOTS shold be updated before release
    bytes constant ROOTS = "\x2c\x2f\xcc\x07\x35\xc1\x71\xe5\x7f\x5f\xa4\x9f\x0d\x3b\x30\xf7\x77\xfa\x2e\xea\x35\x31\xf4\x18\x79\x7a\xf1\x4b\x1a\x98\xd9\xb8\x58\xe6\xb0\x93\x46\x3d\x54\x6a\xa9\x8c\x47\x30\xe2\x29\x04\xd1\x61\x93\xf3\xdd\x9d\xf3\x6c\x46\x8c\x27\xa5\x8c\xb9\xb5\xa8\x6e";
    
   function getRootHash(uint64 epoch) internal pure returns(bytes32 hash) {
       bytes memory roots = ROOTS;
       require(epoch >= epochStart && epoch <= epochEnd, "epoch out of range!");
       uint256 index = epoch - epochStart + 1; // skip length
       assembly{
           hash := mload(add(roots, mul(index, 0x20)))
       }
   }
}
