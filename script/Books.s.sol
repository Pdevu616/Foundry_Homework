// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Books.sol";

contract BooksScript is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy the Books contract without storing the instance
        new Books("Programming Foundry", "Ellan", 100);

        vm.stopBroadcast();
    }
}
