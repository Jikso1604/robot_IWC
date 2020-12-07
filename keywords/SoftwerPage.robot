*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../locators/SoftwerePage.robot

*** Keywords ***
Click on the Windos 8 pro
    sleep    1
    Wait Until Element Is Enabled    ${Windows 8 Pro}
    Click Element    ${Windows 8 Pro}

Add to cart Windos 8 pro
    sleep    2
    Wait Until Element Is Enabled    ${AddToCartButton}
    Click Element    ${AddToCartButton}

Close alert mesage
    sleep    2
    Wait Until Element Is Visible    ${CloseAlertMesage}
    Click Element    ${CloseAlertMesage}

click on the shoping cart
    sleep    1
    Wait Until Element Is Visible    ${ShopingCart}
    Click Element    ${ShopingCart}
