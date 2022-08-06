// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Election {

/*
  **REQUIREMENTS**

  1. candidates will have id, name and number of votes
  2. every address can only vote once.
  3. voting will end in 2minutes. ( 120000 miliseconds)
  4. function to vote
  5. function to check the winner

*/

/*
  **Issues to solve**
  
  1. How to loop through mapping in solidity. ( if not )
  2. How to make an array of structs in solidity. ( if not ) then change in implementation would be required. 
  3. Second way if 1 and 2 fails : Instead of struct, redefine the implementation using empty array and push key value pairs (objects) using array.push method.
  Benefit of 3rd : We can use array methods to get the desired values easily which is(if) not possible in mapping. 

*/

  uint256 public votingTime = 1659851092;  // Add 1 minute in it.
  string public winner;
  uint public id;
  struct Candidate{
    uint id;
    string name;
    uint votes;
  }
  let candidates = [];
  // uint[] public candidates;
  // mapping(uint=>Candidate) public candidates;
  // let candidates = {};
  mapping(address=>bool) public voted;

  modifier alreadyVoted{
    require(!voted[msg.sender]);           // Check if msg.sender already voted.
    require(block.timestamp < votingTime); // Check if voting duration already finished.
    _;
  }

  modifier timeIsUp{
    require(block.timestamp> votingTime);
    _;
  }

  // constructor(){
  //   increment();
  //   candidates[id] = Candidate(id,"First",0);
  //   increment();
  //   candidates[id] = Candidate(id,"Second",0);
  // }

  // function addCandidate(string memory _name) public{
  //   increment();
  //   candidates[id] = Candidate(id,_name,0);
  // }

  // function increment() public{
  //   id += 1;
  // }

  // function vote(uint _choice) public alreadyVoted{
  //   voted[msg.sender] = true;
  //   for(uint i=1;i<candidates.length;i++){
  //     if(i==_choice){
  //       candidates[i].votes += 1;
  //     }
  //   }
  // }

  // function assignWinner() external timeIsUp{
  //   for(uint i =1;i<candidates.length;i++){
  //     if(candidates[i].votes>candidates[i+1].votes){
  //       winner = candidates[i].name;
  //     }
  //   }
  // }

  function checkWinner() view public returns(string memory) {
    return winner;
  }
  
}
