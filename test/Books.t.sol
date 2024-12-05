// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Books.sol";

contract BooksTest is Test {
    Books books;

    function setUp() public {
        books = new Books("Programming Foundry", "Ellan", 100);
    }

    function test_get_book() public view {
        // Get the book struct
        Books.Book memory book = books.get_book();

        // Assert the values in the struct
        assertEq(book.title, "Programming Foundry");
        assertEq(book.author, "Ellan");
        assertEq(book.pages, 100);
    }

    function test_updatePages() public {
        // Update the number of pages
        books.update_pages(200);

        // Get the updated book struct
        Books.Book memory book = books.get_book();

        // Assert the updated number of pages
        assertEq(book.pages, 200);
    }
}
