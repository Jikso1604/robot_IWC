*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../locators/SearchPage.robot
Resource          ../locators/CheckOutAsAGuest.robot

*** Keywords ***
SearchIsEmpty
    sleep    1
    Wait Until Element Contains    ${Searcherror}    No products were found that matched your criteria.

SearchLaptopInComputerCategoriPrice1400
    [Arguments]    ${NewTextInSearch}    ${SelectCategory}    ${LowPrice}    ${HighPrice}
    Input Text    ${InputNewText}    ${NewTextInSearch}
    Click Element    ${CheckBox_AdvancedSearch}    #checkbox
    Wait Until Element Is Enabled    ${CategoruDropDown}    #category
    Select From List By Label    ${CategoruDropDown}    ${SelectCategory}
    Click Element    ${CheckBox_AutomaticallySearchSubCategories}
    Input Text    ${InputLowPrice}    ${LowPrice}
    Input Text    ${InputHighPrice}    ${HighPrice}
    Click Element    ${CheckBox_SearchInProductDescriptions}
    sleep    1
    Click Element    ${ClickSearchSubmite}

TwoLapTopsAreThere
    [Arguments]    ${ProductOneName}    ${ProductTwoName}
    Wait Until Page Contains    ${ProductOneName}
    Wait Until Page Contains    ${ProductTwoName}

GoToHomePage
    Wait Until Element Is Visible    ${SearchLogo}
    Click Element    ${SearchLogo}
    sleep    1
    Wait Until Element Contains    ${h2WelcomeMesage}    Welcome to our store
