*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${clickOnCheckOutAsGuest}    //body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[1]/div[3]/input[1]
${hiCheckout}     //h1[contains(text(),"Checkout")]
${GuestFirstName}    //*[@id="BillingNewAddress_FirstName"]
${GuestLastName}    //*[@id="BillingNewAddress_LastName"]
${GuestEmail}     //*[@id="BillingNewAddress_Email"]
${GuestContry}    //*[@id="BillingNewAddress_CountryId"]
${GuestCity}      //*[@id="BillingNewAddress_City"]
${GuestAddress}    //*[@id="BillingNewAddress_Address1"]
${GuestZipCode}    //*[@id="BillingNewAddress_ZipPostalCode"]
${GuestPhoneNumber}    //*[@id="BillingNewAddress_PhoneNumber"]
${ButtonContinue}    //*[@id="billing-buttons-container"]/input
${ShipingMethodButton}    //*[@id="shipping-method-buttons-container"]/input
${paymentMethod}    //*[@id="paymentmethod_1"]
${paymentMethodButton}    //*[@id="payment-method-buttons-container"]/input
${CreditCardType}    //*[@id="CreditCardType"]
${CardHoolderName}    //*[@id="CardholderName"]
${GusetCard_Number}    //*[@id="CardNumber"]
${GuestCartExpire_Month}    //*[@id="ExpireMonth"]
${GuestCartExpireYear}    //*[@id="ExpireYear"]
${GuestCartCardCode}    //*[@id="CardCode"]
${hiCreditCart}    //*[@for="CreditCardTypes"]
${paymentInfoButton}    //*[@id="payment-info-buttons-container"]/input
${confirmOrderButton}    //*[@id="confirm-order-buttons-container"]/input
${OrderNumberIs}    //*[@class="order-number"]//strong
${Logo}           //*[@class="header-logo"]//img
${h2WelcomeMesage}    //h2[contains(text(),"Welcome to our store")]
${SuccessfullyProcessed}    //strong[contains(text(),"Your order has been successfully processed!")]
