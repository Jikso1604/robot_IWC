*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../locators/LogInPage.robot
Resource          ../locators/RegistarPage.robot
Resource          ../locators/HomePage.robot

*** Keywords ***
LogIn Whit Valid Emai And Pass
    [Arguments]    ${email}    ${pasword}
    Wait Until Element Is Enabled    ${Submite}
    Input Text    ${EmailAdres}    ${email}
    Input Text    ${Password}    ${pasword}
    Click Element    ${Submite}

Comfrm LogIn
    Wait Until Page Contains    You have no items in your shopping cart.
    Wait Until Element Is Enabled    ${logOut}
    sleep     2
