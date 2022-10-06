*** Settings ***
Library    SeleniumLibrary
Resource    Open_ToolQA.robot
Resource    New_User.robot
Resource    Login_Tool.robot
Resource    Book_Store.robot
Test Teardown    Close All Browsers

*** Test Cases ***
Test TOOLQA
    Set Selenium Speed    0.0s
    Open ToolQA    ${URL}
    New User    ${FirstName}    ${LastName}    ${UserName}    ${Password}
    Login to ToolQA    ${UserName}    ${Password}
    Book Store
