*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${url}    https://www.pl.com

*** Keywords ***
Login to Prog
    [Documentation]    Correct login to the Program in incognito mode
    [Arguments]    ${name_id}    ${password}
    Open Browser    ${url}    Chrome    options=add_argument("--incognito")
    Input Text    name=user    Luk001
    Input Text    name=password    123456
    Click Button    id=loginbt
    #Click Button    agree