*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.amazon.com.br
${MENU_ELETRONICS}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]

*** Keywords ***
Open the browser
    Open Browser
    Maximize Browser Window

Close the browser
    Close Browser

Access the home page (amazon.com.br)
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICS}

Go to the menu "Eletrônicos"
    Click Link    locator=${MENU_ELETRONICS}

Verify that the title is displayed as "${TITLE}"
    Title Should Be    title=${TITLE}

Verify the phrase "${PHRASE}"
    Wait Until Page Contains    text=${PHRASE} 

Verify that the category "${CATEGORY_NAME}" is displayed
    Element Should Be Visible    locator=//a[@aria-label='${CATEGORY_NAME}']
    
    
