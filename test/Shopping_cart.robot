*** Settings ***
Suite Setup       OpenChromeBrowser    https://demo.nopcommerce.com    chrome
Suite Teardown    close Browser
Library           SeleniumLibrary
Library           String
Resource          ../resources/ChromeBrowser.robot
Resource          ../keywords/BooksPage.robot
Resource          ../keywords/Fahrenheit_451_by_Ray_Bradbury.robot
Resource          ../keywords/ShopingCart.robot
Resource          ../keywords/Product_First_Prize_Pies.robot
Resource          ../keywords/HomePage.robot

*** Test Cases ***
Remove product from Cart
    Click On Books
    Click On Product 1
    Product Fahrenheit 451 by Ray Bradbury
    Click On Product 2
    Product First Prize Pies
    Verify ShopingCart
