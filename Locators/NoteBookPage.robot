*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${h1NoteBook}     //h1[contains(text(),"Notebooks")]
${FilterItems}    //*[@class="filtered-items"]//ul
${RemoveFilter}    //*[@class="remove-filter"]//a
