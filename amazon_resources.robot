*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.amazon.com.br

*** Keywords ***
Open the browser
    Open Browser

Close the browser
    Close Browser

Access the home page (amazon.com.br)
    Go To    url=${URL}
