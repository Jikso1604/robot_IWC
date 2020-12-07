*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../resources/ChromeBrowser.robot
Resource          ../keywords/CheckOutAsAGuest.robot
Resource          ../keywords/SearchPage.robot
Resource          ../keywords/HomePage.robot

*** Test Cases ***
Display products with \ Search
    [Setup]    OpenChromeBrowser    https://demo.nopcommerce.com    chrome
    inputTextAndSearch    someting
    SearchIsEmpty
    SearchLaptopInComputerCategoriPrice1400    LapTop    Computers    1200    1400
    TwoLapTopsAreThere    HP Spectre XT Pro UltraBook    Lenovo Thinkpad X1 Carbon Laptop
    GoToHomePage
