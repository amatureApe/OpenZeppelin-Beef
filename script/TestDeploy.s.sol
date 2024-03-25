// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";

import "src/Challenge.sol";
import "src/Beef.sol";

import "openzeppelin/utils/Strings.sol";

contract Test is Script {
    function run() public {
        string memory env = "PRIVATE_KEY_";

        for (uint256 i = 0; i < 2; i++) {
            uint256 userKey = vm.envUint(
                string.concat(env, Strings.toString(i))
            );
            address user = vm.addr(userKey);

            // Log the derived address
            console.log("user", user);
        }
    }
}
