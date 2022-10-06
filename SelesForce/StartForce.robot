*** Settings ***
Library    SeleniumLibrary
Resource    OpenSeleF.robot
Resource    LoginSelesF.robot
Resource    Write.robot

*** Variables ***
${URL}    https://www.salesforce.com/eu/form/demo/demo-overview/?d=cta-jumbotron-3-demo-overview

*** Test Cases ***
SelesForce_1
    Open Selseforce    ${URL}
    Login to SelesForce
    Write Text in txt 