*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    DataDriver    edit_user_1.xlsx    sheet_name=sdit_user_2
Library    XML

*** Variables ***
${ID_VERIFY}    xpath://*[@id="userList"]/div/div[2]

*** Test Cases ***
Verify The Data From Excel    ${userId2}