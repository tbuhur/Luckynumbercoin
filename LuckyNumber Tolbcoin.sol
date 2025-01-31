// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract TolgaLuckyNumberContract {
    address private owner;
    uint256 private   luckyNumber;
    constructor(address _owner) {
        owner = msg.sender;}
  function setLuckyNumber(uint256 _luckyNumber) public {
    require(msg.sender == owner, "Only the owner can set the lucky number!");
    luckyNumber = _luckyNumber;
}       
  function getLuckyNumber() public view returns(uint256) {
    return luckyNumber;
}
  function getOwner() public view returns(address) {
    return owner;
}
  function changeLuckyNumber(uint256 _luckyNumber) external payable {
    require(_luckyNumber > 0, "Lucky number must be greater than 0.");
    require(msg.value > 0, "Transaction value must be greater than 0.");
    luckyNumber= _luckyNumber;
} }

