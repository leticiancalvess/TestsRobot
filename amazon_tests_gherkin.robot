*** Settings ***
Documentation    test suite for amazon.com.br
Resource         amazon_resources.robot
Test Setup       Open the browser
Test Teardown    Close the browser

*** Test Cases ***
Test Case 01 - Access the electronics menu
    [Documentation]    The test verifies the electronics 
    [Tags]             menus    categories
    Given that I am on the home page (amazon.com.br)
    When I go to the menu "Eletrônicos"
    Then the title is displayed as "Eletrônicos e Tecnologia | Amazon.com.br"
    And the phrase "Eletrônicos e Tecnologia" is displayed 
    And the category "Computadores e Informática" is displayed

Test Case 02 - Search for a product
    [Documentation]    Verifies it's possible to search a product 
    [Tags]             search_products    search_list
    Given that I am on the home page (amazon.com.br)
    When I type the product name "Echo Dot" in the search field
    And click on the search button
    Then the "Echo Dot" is displayed on the research list
Test Case 03 - Add Products to the Cart
    [Documentation]    Verifies that the user is able to add a product to the cart
    [Tags]    add_cart
    Given that I am on the home page (amazon.com.br)
    When I add the "Xbox Series S Console" product to your cart
    Then the product "Xbox Series S Console" should be shown in the cart

Test Case 04 - Remove the rx from the cart
    [Documentation]    This test checks for the removal of a product from the shopping cart
    [tags]     remove_cart
    Given that I am on the home page (amazon.com.br)
    And there is the product "Xbox Series S Console" in the cart
    When I remove the "Xbox Series S Console" product from the cart
    Then the cart should be empty

