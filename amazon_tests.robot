*** Settings ***
Documentation    this suite tests the amazon website
Resource         amazon_resources.robot
Test Setup       Open the browser
Test Teardown    Close the browser

*** Test Cases ***
Test Case 01 - Access "Eletronics" menu
    [Documentation]    This test verifies the menu eletronics 
    [Tags]             menus    categories  
    Access the home page (amazon.com.br)
#     Go to the menu "Eletrônicos"
#     Verify that the title is displayed as "Eletrônicos e Tecnologia"
#     Verify the phrase "Eletrônicos e Tecnologia"
#     Verify that the category "Computadores e Informática" is displayed

# Test Case 02 - Search a product
#     [Documentation]    This test verifies the product list
#     [Tags]             products_search      search_list
#     Access the home page (amazon.com.br)
#     Type the product name "Xbox Series S" on the search field
#     Click on the "Search" button
#     Verify that the product is displayed on the products list