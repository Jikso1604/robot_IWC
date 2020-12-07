*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${ArcBooks}       //h1[contains(text(),"Books")]
${Picture of Fahrenheit 451 by Ray Bradbury}    //*[@alt="Picture of Fahrenheit 451 by Ray Bradbury"]
${Picture of First Prize Pies}    //*[@alt="Picture of First Prize Pies"]
${cart-label}     //*[@class="cart-label"]
