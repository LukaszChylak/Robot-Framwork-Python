*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     String
Library     XML
Library     DataDriver      edit_user.xlsx      sheet_name=edit_user_1
Resource    Login_To_Prog.robot
Resource    Load_User.robot
#Test Template    Read All The Data

*** Variables ***
${url}      https://www.pl.com
#{ID_Verify}    class=xxx
${PATH}    C:/Users/Luk/../edit_user.xlsx
${name_id}      Luk001
${password}     123456

*** Test Cases ***
Login to Program    ${name_id}=Luk001   ${password}=123456
Verify The Data From Excel    ${userId2}

*** Keywords ***
Read All The Data
    [Documentation]    Upload the user file
    [Arguments]    ${userId2}    ${PATH}    ${name_id}    ${password}
    Open Browser    ${url}    Chrome    options=add_argument("--incognito")
    Input Text    name=user    ${name_id}
    #correct user pass = 123456
    Input Text    name=password    ${password}
    Click Button    id=btLogin
    Set Selenium Speed    0.3s
    Click element    id=btMenu
    Click Element    id=btUserGroup
    Click Element    id=btUserEdit
    File Should Exist    {PATH}
    File Should Not Be Empty    {PATHE}
    Wait Until Element Is Visible    id=relUser
    Choose File    //*[id="reUser"]/input    ${PATH}
    Click Element    id=showAllUsersBt
    FOR    ${i}    IN    1    999
        ${text}    Get Text    //*[@id="UserList"]/div[2]/div[${i}]/p
        Log To Console    ${text}
        Run Keyword If    '${text}' == '${userId2}'    Exit For Loop
        Log To Console    ${userId2}
        Click Element    //*[@id="UserList"]/div[2]/div[${i}]/p        
    END