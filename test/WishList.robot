*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../keywords/HomePage.robot
Resource          ../resources/ChromeBrowser.robot

*** Test Cases ***
Price is calculated correctly
    [Setup]    OpenChromeBrowser    https://demo.nopcommerce.com    chrome
    Click On Books
    sleep     2
    Wait Until Element Is Visible    //div[6]/div[3]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div[2]/div[3]/div[2]/input[3]
    Click Element    //div[6]/div[3]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div[2]/div[3]/div[2]/input[3]
    sleep    1
    Wait Until Element Is Visible    //div[6]/div[3]/div[2]/div[2]/div/div[2]/div[3]/div/div[1]/div/div[2]/div[3]/div[2]/input[3]
    Click Element    //div[6]/div[3]/div[2]/div[2]/div/div[2]/div[3]/div/div[1]/div/div[2]/div[3]/div[2]/input[3]
    sleep    2
    Wait Until Element Is Enabled    //*[@id="bar-notification"]//a
    Click Element    //*[@id="bar-notification"]//a
    sleep    1
    Wait Until Element Is Visible    //*[@name="updatecart"]
    Element Should Contain    (//*[@class="product-subtotal"])[1]    $51.00
    Element Should Contain    (//*[@class="product-subtotal"])[2]    $27.00
    ${itemsInWishList}    Get Element Count    //*[@class="wishlist-qty"]
    FOR    ${items}    IN RANGE    1    ${itemsInWishList}+2
        Clear Element Text    (//*[@class="qty-input"])[${items}]
        Input Text    (//*[@class="qty-input"])[${items}]    5
    END
    Click Element    //*[@name="updatecart"]
    Sleep    2
    ${priceBy5}    Get Text    (//*[@class="product-subtotal"])[1]
    Element Should Contain    (//*[@class="product-subtotal"])[2]    $135.00
    Run Keyword If    '${priceBy5}'=='$255.00'    Close Browser
