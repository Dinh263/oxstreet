*** Settings ***
Resource        ../Pages/HomePage.robot

*** Keywords ***
Search A Product
    [Arguments]    ${p_search_product}
    Set Txt Search A Product At Home Page    ${p_search_product}
    Wait Until Page Load Complete All Search Products

Assert Search Product Is Correct
    [Documentation]    This keyword is used for checking if the result page contains the search product which user input.
    [Arguments]    ${p_expected_product_name}
    ${bool}=    Page Contains The Product Name    ${p_expected_product_name}
    Should Be True    ${bool}==True    Expected: ${p_expected_product_name} found but not




