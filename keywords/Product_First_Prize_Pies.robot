*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../locators/Product_First_Prize_Pies.robot

*** Keywords ***
Product First Prize Pies
    Wait Until Element Is Visible    ${AddToCardProd2}
    sleep    1
    Click Element    ${AddToCardProd2}
    Wait Until Element Contains    ${bar-notification success}    The product has been added to your shopping cart
    sleep    1
    Click Element    ${Books}
