*** Settings ***
Suite Setup       OpenChromeBrowser    https://demo.nopcommerce.com    chrome
Suite Teardown    Close Browser
Library           SeleniumLibrary
Library           String
Resource          ../resources/ChromeBrowser.robot
Resource          ../keywords/HomePage.robot
Resource          ../keywords/SoftwerPage.robot
Resource          ../keywords/CheckOutAsAGuest.robot
Resource          ../keywords/ShopingCart.robot

*** Test Cases ***
Checkout as guest and pay with: Credit Card
    Navigate to subcategory Software
    Click on the Windos 8 pro
    Add to cart Windos 8 pro
    Close alert mesage
    click on the shoping cart
    Check terms of service
    Click Checkout
    checkout as a guest
    Condition to fill the checkout as guest
    Choose shipping method
    Choose Payment method
    Condition to Enter Credit Card Info
    Click payment button Continue
    Make Sure Address and product is correct
    click Confirm Order
    Make Shure Order Has Been Successfully processed
