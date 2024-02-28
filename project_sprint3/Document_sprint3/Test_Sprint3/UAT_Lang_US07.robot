*** Settings ***
Documentation     A test suite with a single test for valid login.
Library           SeleniumLibrary


*** Variables ***
${SERVER}         localhost:8080
${BROWSER}        Chrome
${DELAY}          1
${INDEX URL}    http://${SERVER}/id/



*** Test Cases ***
Open Event Home Page:   #indo to eng
    Open Browser    ${INDEX URL} 
    Click Element     xpath=//a[@title="English (English)"]
    Title Should Be    Shop
    Element Text Should Be    id:contact-link    Contact us  
    Element Text Should Be    class:products-section-title    POPULAR PRODUCTS
    Element Text Should Be    class:myaccount-title    YOUR ACCOUNT 

Open Event New Product Page:
    Open Browser    ${INDEX URL} 
    Click Element    id:link-product-page-new-products-1
    Title Should Be    Produk baru
    Click Element     xpath=//a[@title="English (English)"]
    Title Should Be    New products
    Element Text Should Be    id:contact-link    Contact us  
    Element Text Should Be    id:js-product-list-header   NEW PRODUCTS
    Element Text Should Be    class:myaccount-title    YOUR ACCOUNT 

Open Event clothes Page:
    Open Browser    ${INDEX URL} 
    Click Link    http://localhost:8080/id/3-Pakaian
    Title Should Be    Pakaian
    Click Element     xpath=//a[@title="English (English)"]
    Title Should Be    Clothes
    Element Text Should Be    id:contact-link    Contact us  
    Element Text Should Be    class:facet-title    Availability
    Element Text Should Be    class:myaccount-title    YOUR ACCOUNT 

