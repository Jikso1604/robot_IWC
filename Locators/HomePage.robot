*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${Registar}       //*[@class="ico-register"]
${Register}       //h1[contains(text(),"Register")]
${Logo}           //*[@class="header-logo"]//img
${LogIn_Icon}     //*[@class="ico-login"]
${logOut}         //a[contains(text(),"Log out")]
${ComputersCategory}    (//*[@href="/computers"])[1]
${NoteBookSubCategory}    (//*[@href="/notebooks"])[1]
${Books}          (//a[contains(text(),"Books")])[1]
${SubCategorySoftware}    (//a[contains(text(),"Software")])[1]
${SearchInput}    //*[@id="small-searchterms"]
${SearcButton}    //*[@id="small-search-box-form"]/input[2]
