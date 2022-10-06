*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FirstName}    FirstName1
${LastName}    LastName1
${UserName}    UserName1
${Password}    Password1@
${checkbox}    g-recaptcha

*** Keywords ***
New User
    [Arguments]    ${FirstName}    ${LastName}    ${UserName}    ${Password}
    Click Button    newUser
    Scroll Element Into View    //*[@id="app"]/div/div/div[2]/div[1]/div/div/div[6]/div/ul
    Input Text    firstname    ${FirstName}
    Input Text    lastname    ${LastName}
    Input Text    userName    ${UserName}
    Input Text    password    ${Password}
    Scroll Element Into View    //*[@id="app"]/div/div/div[2]/div[1]/div/div/div[6]/div/ul
    #Click Element    ${checkbox}
    Click Button    gotologin