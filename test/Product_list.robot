*** Settings ***
Suite Setup       OpenChromeBrowser    https://demo.nopcommerce.com    chrome
Suite Teardown    Close Browser
Library           SeleniumLibrary
Library           String
Resource          ../resources/ChromeBrowser.robot
Resource          ../keywords/NoteBookPage.robot
Resource          ../keywords/HomePage.robot

*** Test Cases ***
REMOVE FILTER
    Navigate to subcategory Notebooks
    Notebooks Subcategory
    fileter Options    Intel Core i5    8 GB
    Filter verification
    Remove Filter
