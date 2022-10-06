*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
    [Documentation]    Upload the user file to User=>Edit
    [Arguments]    ${PATH}
    # Plik znajduje sie w ${PATH} -> D:/My Documents/...
    Set Selenium Speed    0.2s
    Click Element    id=btMenuId
    Click Element    id=btUserGrID
    Click Element    id=btUserEditId
    # Click Element    id=reloadUsers
    File Should Exist    ${PATH}
    File Should Not Be Empty    ${PATH}
    Wait Until Element Is Visible    id=reloadUsers
    Choose File    
    ...    //*[@id="reloadUsers"]/input
    ...    ${PATH}