*** Settings ***
Resource        ../Pages/LoginPage.robot
Resource        Common.robot

*** Keywords ***
Go To Login Page
    Open Browser And Go To Page    ${OXSTREET_LOGIN}

Login To Application
    [Arguments]    ${p_email}    ${p_password}
    Set Txt Email At Login Page    ${p_email}
    Set Txt Password At Login Page    ${p_password}
    Click Btn Log in At Login Page



