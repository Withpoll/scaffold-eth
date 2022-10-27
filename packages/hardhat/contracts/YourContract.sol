//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract YourContract {

  event SetPurpose(address sender, string purpose);

  string public purpose = "web3";

  constructor() payable {

  }

  function setPurpose(string memory newPurpose) public {
      purpose = newPurpose;
      emit SetPurpose(msg.sender, purpose);
  }

  // to support receiving ETH by default
  receive() external payable {}
  fallback() external payable {}
}
