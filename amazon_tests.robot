*** Settings ***
Documentation    test suite for amazon.com.br
Resource         amazon_resources.robot
Test Setup       Open the browser
Test Teardown    Close the browser

*** Test Cases ***
Test Case 01 - Access the electronics menu
    [Documentation]    The test verifies the electronics 
    [Tags]             menus    categories
    Access the home page (amazon.com.br)
    Go to the menu "Eletrônicos"
    Verify that the title is displayed as "Eletrônicos e Tecnologia | Amazon.com.br"
    Verify the phrase "Eletrônicos e Tecnologia"
    Verify that the category "Computadores e Informática" is displayed

Test Case 02 - Search for a product
    [Documentation]    Verifies it's possible to search a product 
    [Tags]             search_products    search_list
    Access the home page (amazon.com.br)
    Type the product name "Echo Dot" in the search field
    Click on the search button
    Verifies the "Echo Dot" is displayed on the research list

Test Case 03 - Add Products to the Cart
    [Documentation]    Verifies that the user is able to add a product to the cart
    [Tags]    add_cart
    Access the home page (amazon.com.br)
    Type the product name "Xbox Series S" in the search field
    Click on the search button
    Verifies the "Xbox Series S" is displayed on the research list
    Click on the "Xbox Series S" product
    Add the product "Xbox Series S Console" to your cart
    Check if the "Xbox Series S Console" product has been successfully added

Test Case 04 - Remove the rx from the cart
    [Documentation]    This test checks for the removal of a product from the shopping cart
    [tags]     remove_cart
    Access the home page (amazon.com.br)
    Type the product name "Xbox Series S" in the search field
    Click on the search button
    Verifies the "Xbox Series S" is displayed on the research list
    Click on the "Xbox Series S" product
    Add the product "Xbox Series S Console" to your cart
    Check if the "Xbox Series S Console" product has been successfully added
    Remove the "Xbox Series S Console" product from the cart
    Check if the cart is empty
