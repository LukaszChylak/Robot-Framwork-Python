*** Settings ***
Documentation    Sikuli with ROBOT framework
Library    SikuliLibrary
Library    SeleniumLibrary
Library    OperatingSystem

Suite Setup    Run Keywords    Start Sikuli Process    AND    Initialize All Images
Suite Teardown    Stop Remote Server
Test Setup    Open Browser    ${URL}    ${BROWSER}
Test Teardown    Close Browser

*** Variables ***
${URL}    https://robotsparebinindustrise.com/#
${BROWSER}    chrome
${HEADER_IMAGE}    Robot_Logo.png
${USERNAME_IMAGE}    user_name.png
${PASSWORD}    user_password.png
${LOGIN_BUTTON}    Log_in.png
${FIRST_NAME}    First_name.png
${LAST_NAME}    Last_Name.png
${LOGOUT_BUTTON}    maria_LogOut.png

*** Test Cases ***
Test_Sikuli
    Check Header If Exist
    Input Username And Password
    Input Firsname And Lastname
    Click The Logout Button

*** Keywords ***
Initialize All Images
    # Link/position to the file wher is .png C:\.. or ${CURDIR}${/}sikuli_test_demo
    Add Image Path    C:\..

Check Header If Exist
    Set Library Search Order    SikuliLibrary
    Exists    ${HEADER_IMAGE}

Input Username And Password
    Set Library Search Order    SikuliLibrary
    Input Text    ${USERNAME_IMAGE}    maria
    Input Text    ${PASSWORD}    textthoushallnotpass
    Click Button    ${LOGOUT_BUTTON}

Input Firstname And Lastname
    Set Library Search Order    SikuliLibrary
    Input Text    ${FIRST_NAME}    Sikuli
    Input Text    ${LAST_NAME}    Robot framework

Click The Logout Button
    Should Exist    ${LOGOUT_BUTTON}
    Click Element    ${LOGOUT_BUTTON}
