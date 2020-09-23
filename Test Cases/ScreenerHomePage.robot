*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary
Library    ../Utilities/Locators.py
*** Variables ***
${URL}    https://www.screener.in/
${Browser}    Chrome

*** Test Cases ***
TC001
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    ${search_box} =     Get Data From JSON    HomePage.searchbox
    Input Text    ${search_box}    Infosys
    Sleep    2
    Press Keys    None    RETURN
    #Clear Element Text      xpath://input[@aria-label='Search Company']
    #Input Text    xpath://input[@aria-label='Search Company']    Infosys
    #Close Browser


*** Keywords ***
Get Data From JSON
    [Arguments]    ${locator_jsonpath}
    ${result}=    read_loactor_from_json    ${locator_jsonpath}
    Log To Console    ${
    [Return]    ${result}