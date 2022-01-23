*** Settings ***
Documentation        This testsuite is used for testing search function

Resource             ../Resources/Login.robot
Resource             ../Resources/Constant.robot
Resource             ../Resources/Search.robot

*** Test Cases ***
As a user I want to verify search function works correct
    [Documentation]    This test case is used for checking search function works correct or not
    ...    Step 1: go to login page and login with username and password
    ...    Step 2: at the homepage input the search product and enter.
    ...    Step 3: wait for page load complete all result and verify page contains the expected product name.
    [Tags]    search
    ${email}=    Set Variable    ${OXSTREET_USERNAME}
    ${password}=     Set Variable    ${OXSTREET_PASSWORD}
    ${product}=    Set Variable    neptune blue
    ${expected_product_name}=    Set Variable    KAWS x sacai x Blazer Low 'Neptune Blue'
    Go To Login Page
    Login To Application    ${email}    ${password}
    Search A Product    ${product}
    Assert Search Product Is Correct    ${expected_product_name}


