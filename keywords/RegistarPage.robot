*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../locators/RegistarPage.robot

*** Keywords ***
Your Personal Details
    [Arguments]    ${First Name}    ${Last Name}    ${Day}    ${Mounth}    ${Year}    ${Email}
    Wait Until Element Is Enabled    ${Create_Name}
    sleep    2
    Input Text    ${Create_Name}    ${First Name}
    Input Text    ${Create_LastName}    ${Last Name}
    Select From List By Value    ${BirthDay}    ${Day}
    Select From List By Value    ${BirthMounth}    ${Mounth}
    Select From List By Value    ${BirthYear}    ${Year}
    Input Text    ${EmailAdres}    ${Email}

Company Details
    [Arguments]    ${Company}
    Input Text    ${Company_Name}    ${Company}

Your Password
    [Arguments]    ${Arg_Password}
    Input Text    ${Password}    ${Arg_Password}
    Input Text    ${ConfirmPassword}    ${Arg_Password}

Complite Registration
    sleep    2
    Click Element    ${register-button}

Comfirm Registration
    Wait Until Element Is Visible    ${result}
    Element Should Contain    ${result}    Your registration completed    ignore_case=True
    Click Element    ${register-continue}
