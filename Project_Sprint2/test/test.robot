*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Chrome Browser
    Open Browser    http://www.example.com    Chrome
    Maximize Browser Window

*** Keywords ***
Maximize Browser Window
    Maximize Browser Window

