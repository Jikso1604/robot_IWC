*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${cart-label}     //*[@class="cart-label"]
${Shopping cart}    //h1[contains(text(),"Shopping cart")]
${cart-qty}       //*[@class="cart-qty"]
${updatecart}     //*[@name="updatecart"]
${TermsOfService}    //*[@id="termsofservice"]
${CheckOutButton}    //button[contains(text(),"Checkout")]
