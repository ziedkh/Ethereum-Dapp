pragma solidity ^0.4.2;

contract Election {
/********************************************************
string public candidate; //public ==> getter function;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
//store & read candidate
  //constructor    
    function Election() public{
         candidate = "Candidate 1"; //without _ ==> state variable accessible inside the contract represent data that belongs to our contract 

    }

}
********************************************************* */
  
//Model a Condidate 

    struct Candidate {
        uint id ; 
        string name;
        uint voteCount;
    }
    
//Store a candidate 
//Ftech candidate

    mapping(uint => Candidate)public candidates;

//Store candidate count

    uint public candidatesCount;
    
    function Election() public {
        addCandidate("candidate 1");
        addCandidate("candidate 2");
    }

    function addCandidate(string _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount , _name ,0);
    }


}