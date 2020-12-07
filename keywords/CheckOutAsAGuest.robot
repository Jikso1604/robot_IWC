*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../locators/CheckOutAsAGuest.robot

*** Keywords ***
checkout as a guest
    Wait Until Page Contains    Welcome, Please Sign In!
    sleep    1
    Wait Until Element Is Visible    ${clickOnCheckOutAsGuest}
    Click Element    ${clickOnCheckOutAsGuest}

Condition to fill the checkout as guest
    ${Checkout}    Get Text    ${hiCheckout}
    Run Keyword If    '${Checkout}'=='Checkout'    Fill the required fields with data    Ivan    Ivanov    ivanovivan@email.com    Russian Federation    Moscow    Leninsky Ave 20    101000    787-0000

Fill the required fields with data
    [Arguments]    ${BillingNewName}    ${BillingNewLastName}    ${BillingNewEmail}    ${BillingNewContry}    ${BillingNewCityl}    ${BillingNewAdressl}    ${BillingNewZipCodel}    ${BillingNewPhoneNumber}
    Sleep    2
    Wait Until Element Is Visible    ${GuestFirstName}
    Input Text    ${GuestFirstName}    ${BillingNewName}
    Wait Until Element Is Visible    ${GuestLastName}
    Input Text    ${GuestLastName}    ${BillingNewLastName}
    Wait Until Element Is Visible    ${GuestEmail}
    Input Text    ${GuestEmail}    ${BillingNewEmail}
    Wait Until Element Is Visible    ${GuestContry}
    sleep    1
    Mouse Over    ${GuestContry}
    Select From List By Label    ${GuestContry}    ${BillingNewContry}
    Wait Until Element Is Visible    ${GuestCity}
    Input Text    ${GuestCity}    ${BillingNewCityl}
    Wait Until Element Is Visible    ${GuestAddress}
    Input Text    ${GuestAddress}    ${BillingNewAdressl}
    Wait Until Element Is Visible    ${GuestZipCode}
    Input Text    ${GuestZipCode}    ${BillingNewZipCodel}
    Wait Until Element Is Visible    ${GuestPhoneNumber}
    Input Text    ${GuestPhoneNumber}    ${BillingNewPhoneNumber}
    Wait Until Element Is Visible    ${ButtonContinue}
    Click Element    ${ButtonContinue}

Choose shipping method
    sleep    1
    Wait Until Element Is Enabled    ${ShipingMethodButton}
    Click Element    ${ShipingMethodButton}
    sleep    1

Choose Payment method
    Click Element    ${paymentMethod}
    Wait Until Element Is Visible    ${paymentMethodButton}
    sleep    1
    Click Element    ${paymentMethodButton}

Enter Credic Card
    [Arguments]    ${Card}    ${CardholderName}    ${CardNumber}    ${ExpireMonth}    ${ExpireYear}    ${CardCode}
    sleep    1
    Wait Until Element Is Visible    ${CreditCardType}
    Select From List By Value    ${CreditCardType}    ${Card}
    Input Text    ${CardHoolderName}    ${CardholderName}
    Input Text    ${GusetCard_Number}    ${CardNumber}
    Select From List By Value    ${GuestCartExpire_Month}    ${ExpireMonth}
    Select From List By Value    ${GuestCartExpireYear}    ${ExpireYear}
    Input Text    ${GuestCartCardCode}    ${CardCode}

Condition to Enter Credit Card Info
    sleep    1
    ${Select credit card}    Get Text    ${hiCreditCart}
    Run Keyword If    '${Select credit card}'=='Select credit card:'    Enter Credic Card    MasterCard    Ivan Ivanov    5159661410754896    1    2024    164
    ...    ELSE    LOG    nerabote

Click payment button Continue
    sleep    1
    Wait Until Element Is Visible    ${paymentInfoButton}
    sleep    1
    Click Element    ${paymentInfoButton}

Make Sure Address and product is correct
    sleep    1
    Page Should Contain    Billing Address
    Page Should Contain    Shipping Address
    Page Should Contain    Windows 8 Pro
    Page Should Contain    $65.00

click Confirm Order
    Click Element    ${confirmOrderButton}
    sleep    1

Go To Home Page
    ${ORDER NUMBER}    Get Text    ${OrderNumberIs}
    Log    ${ORDER NUMBER}
    sleep    1
    Wait Until Element Is Visible    ${Logo}
    Click Element    ${Logo}
    Wait Until Element Contains    ${h2WelcomeMesage}    Welcome to our store
    sleep    1

Make Shure Order Has Been Successfully processed
    ${Thank you}    Get Text    ${SuccessfullyProcessed}
    Run Keyword If    '${Thank you}'=='Your order has been successfully processed!'    Go To Home Page
    ...    ELSE    Log    Your order has not been successfully processed!
