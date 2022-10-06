*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***

*** Keywords ***
Login to SelesForce
    ${z}=    Generate Random String    1    1234567890
    ${x}=    Generate Random String    1    0123
    ${c}=    Generate Random String    1    6789
    ${e}=    Generate Random String    3    qwertyasdfzxcv    
    Click Element    UserFirstName
    Input Text    UserFirstName    First${z}${x}${c}
    Input Text    UserLastName    Last${c}${x}${z}
    Input Text    UserTitle    JobTitle${x}${z}${c}
    Input Text    UserEmail    ${e}${z}@o2.pl
    Input Text    CompanyName    Company${z}${x}${c}
    Click Element    CompanyEmployees
    Click Element    //*[@name="CompanyEmployees"]/option[2]
    Input Text    UserPhone    48 608444${c}${z}${x}