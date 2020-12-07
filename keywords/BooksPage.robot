*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../locators/BooksPage.robot

*** Keywords ***
Click On Product 1
    Element Should Contain    ${ArcBooks}    Books    ignore_case=True
    Wait Until Element Is Visible    ${Picture of Fahrenheit 451 by Ray Bradbury}
    sleep    1
    Click Element    ${Picture of Fahrenheit 451 by Ray Bradbury}

Click On Product 2
    Element Should Contain    ${ArcBooks}    Books    ignore_case=True
    Wait Until Element Is Visible    ${Picture of First Prize Pies}    15
    sleep    1
    Click Element    ${Picture of First Prize Pies}

Verify ShopingCart
    Element Should Contain    ${ArcBooks}    Books    ignore_case=True
    sleep    1
    ${ItemsInCart}    Get Element Count    ${cart-label}
    Run Keyword If    '${ItemsInCart}'=='1'    RemoveItesFromCart
    ...    ELSE    Log    There Is No Items In Cart
