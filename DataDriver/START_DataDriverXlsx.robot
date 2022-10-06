*** Settings ***
Documentation    DataDriver Testing with Excel

Library    DataDriver    filedriver.xlsx    sheet_name=Sheet1
Library    SeleniumLibrary

Suite Teardown    Close Browser
Test Setup    Launch URL
Test Template    Read All The Data

*** Variables ***
${URL}        https://demoqa.com/text-box
${FULLNAM}    id:userName
${EAMILADD}    id:userEmail
${CURRENTADD}    id:currentAddress
${PERMANTADD}    id:permanentAddress
${SUBMIT_BTN}    xpath://*[@id="submit"]
${NAMEVERIFY}    id:name

*** Test Cases ***
Verify All The Data From Excel ${name} ${email} ${current} ${permanent}

*** Keywords ***
Read All The Data
    [Arguments]    ${name}    ${email}    ${current}    ${permanent}
    Click Element    id=close-fixdban
    Maximize Browser Window
    Log To Console    ${name} : ${email} : ${current} : ${permanent}
    Input Text    ${FULLNAM}    ${name}
    Input Text    ${EAMILADD}     ${email}   
    Input Text    ${CURRENTADD}    ${current}
    Input Text    ${PERMANTADD}    ${permanent}
    Scroll Element Into View    //*[@id="submit"]
    Click Element    ${SUBMIT_BTN}
    # Verification
    ${text}    Get Text    ${NAMEVERIFY}
    Should Be Equal As Strings    ${text}    Name:${name}
    Log To Console    ${text}

Launch URL
    Open Browser    ${URL}    Chrome
    Go To    ${URL}
