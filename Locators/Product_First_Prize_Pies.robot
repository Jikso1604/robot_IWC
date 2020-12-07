*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${AddToCardProd2}    //*[@id="add-to-cart-button-38"]
${bar-notification success}    //*[@class="bar-notification success"]
${Books}          (//a[contains(text(),"Books")])[1]
