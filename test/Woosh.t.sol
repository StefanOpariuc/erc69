// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "forge-std/Test.sol";
import "./src/Woosh.sol";

contract WooshTest is Test {

    function setUp() public {
        // Mocking the Woosh contract
        address wooshContract = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;
        nft = new Woosh(wooshContract);
    }

    function test_setBaseURI() public {
        nft.setBaseURI("https://example.com/");
        assertEq(nft.baseURI(), "https://example.com/");
    }
}