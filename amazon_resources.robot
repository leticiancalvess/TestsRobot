*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.amazon.com.br
${MENU_ELECTRONICS}   //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${SEARCH_INPUT}      //input[contains(@type,'text')]
${SEARCH_BUTTON}     //input[contains(@type,'submit')]
${LIST_PRODUCTS}     //span[contains(@data-component-type,'s-search-results')]

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
    
