*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demoqa.com/login     #https://demoqa.com

*** Keywords ***
Open ToolQA
    [Arguments]    ${URL}
    Open Browser    ${URL}    Chrome    options=add_argument ("--incognito")
    Maximize Browser Window
    Scroll Element Into View    //*[@id="app"]/div/div/div[2]/div[1]/div/div/div[6]/div/ul
    #Click Element    id = item-0