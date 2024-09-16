*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.amazon.com.br
${MENU_ELECTRONICS}   //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${SEARCH_INPUT}      //input[contains(@type,'text')]
${SEARCH_BUTTON}     //input[contains(@type,'submit')]
${LIST_PRODUCTS}     //span[contains(@data-component-type,'s-search-results')]
${ClICK_PRODUCT}    //span[contains(text(), 'Console Xbox Series S')]
${ADD_CART}        //*[@id="add-to-cart-button"]
${REMOVE_CART}        //*[@aria-label="Excluir Console Xbox Series S"]



*** Keywords ***
Open the browser
    Open Browser
    Maximize Browser Window

Close the browser
    Capture Page Screenshot
    Close Browser
# Test Case 01
Access the home page (amazon.com.br)
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELECTRONICS}

Go to the menu "Eletrônicos"
    Click Link    locator=${MENU_ELECTRONICS}

Verify that the title is displayed as "${TITLE}"
    Title Should Be    title=${TITLE}

Verify the phrase "${PHRASE}"
    Wait Until Page Contains    text=${PHRASE} 

Verify that the category "${CATEGORY_NAME}" is displayed
    Element Should Be Visible    locator=//a[@aria-label='${CATEGORY_NAME}']

# Test Case 02
Type the product name "${PRODUCT_NAME}" in the search field
    Input Text       locator=${SEARCH_INPUT}    text=${PRODUCT_NAME}

Click on the search button
    Click Element    locator=${SEARCH_BUTTON}

Verifies the "${PRODUCT_NAME}" is displayed on the research list
    Wait Until Page Contains    text=${PRODUCT_NAME}

Click on the "${PRODUCT_NAME}" product
    Click Element    locator=${ClICK_PRODUCT}

Add the product "${PRODUCT_NAME}" to your cart
    Click Element    locator=${ADD_CART}

Check if the "${PRODUCT_NAME}" product has been successfully added
    Wait Until Page Contains    Adicionado ao carrinho

Remove the "${PRODUCT_NAME}" product from the cart
    Wait Until Element Is Visible   ${REMOVE_CART} 
    Click Element    ${REMOVE_CART}

Check if the cart is empty
    Wait Until Page Contains    foi removido de Carrinho de compras.
# GHERKING
Given that I am on the home page (amazon.com.br)
    Access the home page (amazon.com.br)

When I go to the menu "Eletrônicos"
    Go to the menu "Eletrônicos"

Then the title is displayed as "Eletrônicos e Tecnologia | Amazon.com.br"
    Verify that the title is displayed as "Eletrônicos e Tecnologia | Amazon.com.br"

And the phrase "Eletrônicos e Tecnologia" is displayed 
    Verify the phrase "Eletrônicos e Tecnologia"

And the category "Computadores e Informática" is displayed
    Verify that the category "Computadores e Informática" is displayed

When I type the product name "Echo Dot" in the search field
    Type the product name "Echo Dot" in the search field

And click on the search button
    Click on the search button

Then the "Echo Dot" is displayed on the research list
    Verifies the "Echo Dot" is displayed on the research list

When I add the "Xbox Series S Console" product to your cart
    Type the product name "Xbox Series S" in the search field
    Click on the search button
    Verifies the "Xbox Series S" is displayed on the research list
    Click on the "Xbox Series S" product
    Add the product "Xbox Series S Console" to your cart

Then the product "Xbox Series S Console" should be shown in the cart
    Check if the "Xbox Series S Console" product has been successfully added

And there is the product "Xbox Series S Console" in the cart
    Type the product name "Xbox Series S" in the search field
    Click on the search button
    Verifies the "Xbox Series S" is displayed on the research list
    Click on the "Xbox Series S" product
    Add the product "Xbox Series S Console" to your cart
    Check if the "Xbox Series S Console" product has been successfully added

When I remove the "Xbox Series S Console" product from the cart
    Remove the "Xbox Series S Console" product from the cart

Then the cart should be empty
    Check if the cart is empty