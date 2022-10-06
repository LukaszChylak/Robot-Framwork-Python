*** Settings ***
Library    SeleniumLibrary

#*** Variables ***
#${TitleBook}

*** Keywords ***
Book Store
    [Arguments]    #${TitleBook}
    Wait Until Element Is Visible    //*[@id="app"]/div/div/div[1]/div
    Sleep    2s
    Scroll Element Into View    //*[@id="app"]/div/div/div[2]/div[1]/div/div/div[6]/div/ul
    Click Button    gotoStore
    Scroll Element Into View    //*[@id="app"]/div/div/div[2]/div[1]/div/div/div[6]/div/ul
    Click Element    //*[@id="app"]/div/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[2]/div[1]/div/div[2]/div
    ${TitleBook}    Get Text    //*[@id="ISBN-wrapper"]
    Log To Console    ${TitleBook}
    Scroll Element Into View    //*[@id="app"]/div/div/div[2]/div[1]/div/div/div[6]/div/ul
    Click Button    addNewRecordButton
    Click Element    //*[@id="app"]/div/div/div[2]/div[2]/div[2]/div[2]/div[1]/div[2]/div[2]/div/div[2]/div
    ${TitleBook}    Get Text    //*[@id="ISBN-wrapper"]
    Log To Console    ${TitleBook}
    Scroll Element Into View    //*[@id="app"]/div/div/div[2]/div[1]/div/div/div[6]/div/ul
    Click Button    addNewRecordButton