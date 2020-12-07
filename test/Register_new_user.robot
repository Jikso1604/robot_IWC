*** Settings ***
Suite Setup       OpenChromeBrowser    https://demo.nopcommerce.com    chrome
Suite Teardown    Close Browser
Library           SeleniumLibrary
Library           String
Resource          ../keywords/HomePage.robot
Resource          ../keywords/RegistarPage.robot
Resource          ../resources/ChromeBrowser.robot

*** Test Cases ***
Register new user with valid email
    [Setup]
    Click On Registar
    Your Personal Details    jikso    Shegobil    16    4    1993    shegobil1@gmail.com
    Company Details    domasna
    Your Password    samdoma123
    Complite Registration
    Comfirm Registration
