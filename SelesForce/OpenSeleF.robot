*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.salesforce.com/eu/form/demo/demo-overview/?d=cta-jumbotron-3-demo-overview

*** Keywords ***
Open Selseforce
    [Arguments]    ${URL}
    Open Browser    ${URL}    Chrome    options=add_argument ("--incognito")
    Maximize Browser Window
    Click Button    onetrust-accept-btn-handler
