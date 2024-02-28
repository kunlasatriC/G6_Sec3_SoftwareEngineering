*** Settings ***
Documentation     A test suite with a single test for valid login.
Library           SeleniumLibrary


*** Variables ***
${SERVER}         localhost:8080
${BROWSER}        Chrome
${DELAY}          1
${INDEX URL}    http://${SERVER}/th/
${thai}    /img/flages/th.png


*** Test Cases ***
Open Event Home Page:
    Open Browser    ${INDEX URL} 
    Click Element     xpath=//a[@title="English (English)"]
    Title Should Be    Shop
    Element Text Should Be    id:contact-link    Contact us  
    Element Text Should Be    class:products-section-title    POPULAR PRODUCTS
    Element Text Should Be    class:myaccount-title    YOUR ACCOUNT 

Open Event New Product Page:
    Open Browser    ${INDEX URL} 
    Click Element    id:link-product-page-new-products-1
    Title Should Be    สินค้าใหม่
    Click Element     xpath=//a[@title="English (English)"]
    Title Should Be    New products
    Element Text Should Be    id:contact-link    Contact us  
    Element Text Should Be    id:js-product-list-header   NEW PRODUCTS
    Element Text Should Be    class:myaccount-title    YOUR ACCOUNT 

Open Event clothes Page:
    Open Browser    ${INDEX URL} 
    Click Link    http://localhost:8080/th/3-clothes
    Title Should Be    เสื้อ
    Click Element     xpath=//a[@title="English (English)"]
    Title Should Be    Clothes
    Element Text Should Be    id:contact-link    Contact us  
    Element Text Should Be    class:facet-title    Availability
    Element Text Should Be    class:myaccount-title    YOUR ACCOUNT 

