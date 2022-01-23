*** Settings ***
Library         Browser

*** Keywords ***
Set Txt Email At Login Page
    [Documentation]    This keyword is used for setting email value at the login page.
    [Arguments]    ${p_email}
    ${txt_email}=    Set Variable    css=#email
    Wait For Elements State    ${txt_email}    visible
    Fill Text    ${txt_email}    ${p_email}

Set Txt Password At Login Page
    [Documentation]    This keyword is used for setting password value at the login page.
    [Arguments]    ${p_password}
    ${txt_password}=    Set Variable    css=#password
    Wait For Elements State    ${txt_password}    visible
    Fill Text    ${txt_password}    ${p_password}

Click Btn Log in At Login Page
    [Documentation]    This keyword is used for clicking button login at the login page.
    ${btn_login}=    Set Variable    xpath=//button[text()='Log in']
    Wait For Elements State    ${btn_login}    visible
    Click    ${btn_login}