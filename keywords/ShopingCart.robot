*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../locators/ShopingCart.robot

*** Keywords ***
RemoveItesFromCart
    Click Element    ${cart-label}
    Wait Until Element Contains    ${Shopping cart}    Shopping cart
    ${ItemsInCart}    Get Element Count    ${cart-qty}
    FOR    ${i}    IN RANGE    1    ${ItemsInCart}+2
        Select Checkbox    (//*[@type="checkbox"])[${i}]
    END
    Click Element    ${updatecart}
    Wait Until Element Is Visible    ${Shopping Cart is empty!}
    Element Text Should Be    ${Shopping Cart is empty!}    Your Shopping Cart is empty!

Check terms of service
    sleep    2
    Wait Until Element Is Visible    ${TermsOfService}
    Select Checkbox    ${TermsOfService}

Click Checkout
    sleep    1
    Wait Until Element Is Enabled    ${CheckOutButton}
    Click Element    ${CheckOutButton}
