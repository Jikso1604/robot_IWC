*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${AddToCartProd1}    //*[@id="add-to-cart-button-37"]
${bar-notification success}    //*[@class="bar-notification success"]
${Books}          (//a[contains(text(),"Books")])[1]
