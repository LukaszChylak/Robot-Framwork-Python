*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Keywords ***
Write Text in txt
    ${GET_UserFirstName}    Get Element Attribute    //*[@name="UserFirstName"]    attribute= value
    #${GET_UserFirstName}    Get Element    //*[@name="UserFirstName"]
