# Election contract 

Following features is implemented and tested through Mocha and Ropsten testnet : 

- Time duration 
  - Voting only till duration set by Dev.
  - Winner declaration only after voting ends.
- Adding candidates
- Vote ( Once per wallet address ) 
- checkvotes() to sneak any particular candidate's vote.

## Must Do's to make this code work : 

## Change the voting duration ( state variable : votingTime ) 

- Visit [Unixtimestamp](https://www.unixtimestamp.com/)
- Add seconds until voting is allowed. ( Once block.timestamp reaches the value, user won't be allowed to vote. )

## Terminal commands to make it Compile ready.

- git clone `https://github.com/ishinu/Election-Contract-v2/` and `npm install`
- `npx hardhat compile`

If you haven't deployed any contracts on Public testnet, this article ( 5 lines ) is all you need. [5-Lines](https://github.com/ishinu/Re-Entrancy-Hack-Upgradeable-#pre-requisites-)

That's all it takes to make this contract work on Ropsten testnet!

In our case, we deployed at `0xF6e08975289FE07ba4c1B71e94EA4Dc300847851`. *Feel free to checkout.
