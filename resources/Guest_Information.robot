*** Settings ***
Library           SeleniumLibrary
Library           String

*** Test Cases ***
Guest Information
    Fill the required fields with data1    Ivan    Ivanov    ivanovivan@email.com    Russian Federation    Moscow    Leninsky Ave 20    101000    787-0000

*** Keywords ***
Fill the required fields with data1
    [Arguments]    ${BillingNewName}    ${BillingNewLastName}    ${BillingNewEmail}    ${BillingNewContry}    ${BillingNewCityl}    ${BillingNewAdressl}    ${BillingNewZipCodel}    ${BillingNewPhoneNumber}
    Sleep    2
    Wait Until Element Is Visible    //*[@id="BillingNewAddress_FirstName"]
    Input Text    //*[@id="BillingNewAddress_FirstName"]    ${BillingNewName}
    Wait Until Element Is Visible    //*[@id="BillingNewAddress_LastName"]
    Input Text    //*[@id="BillingNewAddress_LastName"]    ${BillingNewLastName}
    Wait Until Element Is Visible    //*[@id="BillingNewAddress_Email"]
    Input Text    //*[@id="BillingNewAddress_Email"]    ${BillingNewEmail}
    Wait Until Element Is Visible    //*[@id="BillingNewAddress_CountryId"]
    sleep    1
    Mouse Over    //*[@id="BillingNewAddress_CountryId"]
    Select From List By Label    //*[@id="BillingNewAddress_CountryId"]    ${BillingNewContry}
    Wait Until Element Is Visible    //*[@id="BillingNewAddress_City"]
    Input Text    //*[@id="BillingNewAddress_City"]    ${BillingNewCityl}
    Wait Until Element Is Visible    //*[@id="BillingNewAddress_Address1"]
    Input Text    //*[@id="BillingNewAddress_Address1"]    ${BillingNewAdressl}
    Wait Until Element Is Visible    //*[@id="BillingNewAddress_ZipPostalCode"]
    Input Text    //*[@id="BillingNewAddress_ZipPostalCode"]    ${BillingNewZipCodel}
    Wait Until Element Is Visible    //*[@id="BillingNewAddress_PhoneNumber"]
    Input Text    //*[@id="BillingNewAddress_PhoneNumber"]    ${BillingNewPhoneNumber}
    Wait Until Element Is Visible    //*[@id="billing-buttons-container"]/input
    Click Element    //*[@id="billing-buttons-container"]/input
