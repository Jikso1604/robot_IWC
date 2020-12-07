*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../keywords/HomePage.robot
Resource          ../keywords/LogInPage.robot
Resource          ../resources/ChromeBrowser.robot
Library           ExcelRobot

*** Test Cases ***
LogInWhitValidCredentials
    [Setup]    OpenChromeBrowser    https://demo.nopcommerce.com    chrome
    Click On LogIn
    LogIn Whit Valid Emai And Pass    shegobil1@gmail.com    samdoma123
    Comfrm LogIn
    [Teardown]    Close Browser
