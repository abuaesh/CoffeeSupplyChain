pragma solidity ^0.4.24;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'ConsumerRole' to manage this role - add, remove, check
contract ConsumerRole {

  Consumers consumerList;

  // Define 2 events, one for Adding, and other for Removing
  event ConsumerAdded(address _consumer);
  event ConsumerRemoved(address _consumer);

  // Define a struct 'consumers' by inheriting from 'Roles' library, struct Role
  struct Consumers is Role{
  
  }

  // In the constructor make the address that deploys this contract the 1st consumer
  constructor() public {
      add(consumerList, msg.sender);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyConsumer() {
    require(has(consumerList, msg.sender));
    _;
  }

  // Define a function 'isConsumer' to check this role
  function isConsumer(address account) public view returns (bool) {
    return(has(consumerList, account));
  }

  // Define a function 'addConsumer' that adds this role
  function addConsumer(address account) public onlyConsumer {
    addConsumer(account);
  }

  // Define a function 'renounceConsumer' to renounce this role
  function renounceConsumer() public {
    _removeConsumer(msg.sender);
  }

  // Define an internal function '_addConsumer' to add this role, called by 'addConsumer'
  function _addConsumer(address account) internal {
    add(consumerList, account);
  }

  // Define an internal function '_removeConsumer' to remove this role, called by 'removeConsumer'
  function _removeConsumer(address account) internal {
    remove(consumerList, msg.sender);    
  }
}
