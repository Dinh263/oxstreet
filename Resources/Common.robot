*** Settings ***
Library          Browser
Resource         Constant.robot

*** Keywords ***
Open Browser And Go To Page
    [Arguments]    ${p_url}
    Open Browser     ${p_url}    browser=${BROWSER}    headless=${HEADLESS}