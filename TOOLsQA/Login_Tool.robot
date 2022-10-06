*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${UserName}    UserName1
${PASSWORD}    Password1@

*** Keywords ***
Login to ToolQA
    [Arguments]    ${UserName}    ${PASSWORD}
# if program has a User1 hi show info "User exist !"
    Wait Until Element Is Visible    //*[@id="app"]/header
    Click Element    userForm
    Input Text    //*[@id="userName"]    ${UserName}
    Click Element    password
    Input Text    //*[@id="password"]    ${PASSWORD}
    Click Button    login
