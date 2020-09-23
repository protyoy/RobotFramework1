*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.screener.in/
${Browser}    Chrome

*** Test Cases ***
TC001
    Open Browser    ${URL}    ${Browser}
    Close Browser
