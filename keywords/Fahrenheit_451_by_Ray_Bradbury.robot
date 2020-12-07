*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../locators/Fahrenheit_451_by_Ray_Bradbury.robot

*** Keywords ***
Product Fahrenheit 451 by Ray Bradbury
    Wait Until Element Is Visible    ${AddToCartProd1}
    sleep    1
    Click Element    ${AddToCartProd1}
    Wait Until Element Contains    ${bar-notification success}    The product has been added to your shopping cart
    sleep    1
    Click Element    ${Books}
