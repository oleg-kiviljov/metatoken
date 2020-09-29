pragma solidity ^0.6.2;

import "@openzeppelin/contracts-ethereum-package/contracts/Initializable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol";

contract MetaToken is Initializable, ERC20UpgradeSafe {
       function initialize(string memory name, string memory symbol, uint _totalSupply) public initializer {
    	    __ERC20_init(name, symbol);
    	    uint totalSupply = _totalSupply * (10 ** 18);
    	    _mint(_msgSender(), totalSupply);
    }
}