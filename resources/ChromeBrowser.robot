*** Settings ***
Library           SeleniumLibrary
Library           String

*** Keywords ***
OpenChromeBrowser
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Wait Until Element Is Visible    //*[@class="header-logo"]//img
    #povik
