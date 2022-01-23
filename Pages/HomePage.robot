*** Settings ***
Library         Browser

*** Keywords ***
Set Txt Search A Product At Home Page
    [Documentation]    This keyword is used for setting search value at the home page.
    [Arguments]    ${p_search_value}
    ${txt_search}=    Set Variable    css=input[type='search']
    Wait For Elements State    ${txt_search}    visible
    Fill Text    ${txt_search}    ${p_search_value}
    Keyboard Key    press    Enter

Wait Until Page Load Complete All Search Products
    [Documentation]    This keyword is usded for wait page load all search product shwon on page.
    ${btn_load_more}=    Set Variable    xpath=//button[text()='Load more']
    Wait For Elements State    ${btn_load_more}    visible

Page Contains The Product Name
    [Documentation]    This keyword is used for checking if page contains a product name. if yes return true , otherwise return false
    [Arguments]    ${p_product_name}
    ${element}=    Set Variable    xpath=//p[@class='product-name' and @title="${p_product_name}"]
    ${count}=    Get Element Count    ${element}
    IF    ${count}>0
        ${exist}=    Set Variable    True
    ELSE
        ${exist}=    Set Variable    False
    END
    [Return]    ${exist}
