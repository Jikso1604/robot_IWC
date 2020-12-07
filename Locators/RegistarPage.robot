*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${Create_Name}    //*[@id="FirstName"]
${Create_LastName}    //*[@id="LastName"]
${BirthDay}       //*[@name="DateOfBirthDay"]
${BirthMounth}    //*[@name="DateOfBirthMonth"]
${BirthYear}      //*[@name="DateOfBirthYear"]
${EmailAdres}     //*[@id="Email"]
${Company_Name}    //*[@id="Company"]
${Password}       //*[@id="Password"]
${ConfirmPassword}    //*[@id="ConfirmPassword"]
${register-button}    //*[@id="register-button"]
${result}         //*[@class="result"]
${register-continue}    //*[@name="register-continue"]
