*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../locators/NoteBookPage.robot

*** Keywords ***
Notebooks Subcategory
    Wait Until Element Contains    ${h1NoteBook}    Notebooks

fileter Options
    [Arguments]    ${filer1}    ${filer2}
    sleep    1
    Click Element    //a[contains(text(),"${filer1}")]
    sleep    1
    Click Element    //a[contains(text(),"${filer2}")]

Filter verification
    Wait Until Element Contains    ${FilterItems}    CPU Type: Intel Core i5\nMemory: 8 GB

Remove Filter
    Sleep    1
    Click Element    ${RemoveFilter}
