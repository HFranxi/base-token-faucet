pragma solidity ^0.8.20;

contract Faucet {

    mapping(address => uint256) public lastClaim;

    function claim() public {

        require(block.timestamp > lastClaim[msg.sender] + 1 hours);

        lastClaim[msg.sender] = block.timestamp;

    }
}
