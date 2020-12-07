*** Settings ***
Library           SeleniumLibrary
Resource          ../locators/HomePage.robot
Library           String

*** Keywords ***
Click On Registar
    Wait Until Element Is Visible    ${Registar}
    Click Element    ${Registar}
    Wait Until Element Is Visible    ${Register}

Click On LogIn
    Wait Until Element Is Enabled    ${LogIn_Icon}
    Click Element    ${LogIn_Icon}
    sleep    2

Navigate to subcategory Notebooks
    Wait Until Element Is Visible    ${ComputersCategory}
    Mouse Over    ${ComputersCategory}
    Click Element    ${NoteBookSubCategory}

Click On Books
    Wait Until Element Is Visible    ${Books}
    Click Element    ${Books}

Navigate to subcategory Software
    Wait Until Element Is Visible    ${ComputersCategory}
    Mouse Over    ${ComputersCategory}
    Click Element    ${SubCategorySoftware}

inputTextAndSearch
    [Arguments]    ${TextInSearch}
    Wait Until Element Is Visible    ${SearchInput}
    Input Text    ${SearchInput}    ${TextInSearch}
    Click Element    ${SearcButton}
