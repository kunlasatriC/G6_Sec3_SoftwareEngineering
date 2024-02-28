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
Open Event Home Page:  #thai to indo
    Open Browser    ${INDEX URL} 
    Click Element     xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
    Title Should Be    Shop
    Element Text Should Be    id:contact-link    Hubungi kami 
    Element Text Should Be    class:products-section-title    POPULER
    Element Text Should Be    class:myaccount-title    AKUN ANDA 

Open Event New Product Page:
    Open Browser    ${INDEX URL} 
    Click Element    id:link-product-page-new-products-1
    Title Should Be    สินค้าใหม่
    Click Element     xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
    Title Should Be    Produk baru
    Element Text Should Be    id:contact-link    Hubungi kami 
    Element Text Should Be    id:js-product-list-header   PRODUK BARU
    Element Text Should Be    class:myaccount-title    AKUN ANDA 

Open Event clothes Page:
    Open Browser    ${INDEX URL} 
    Click Link    http://localhost:8080/th/3-clothes
    Title Should Be    เสื้อ
    Click Element     xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
    Title Should Be    Pakaian
    Element Text Should Be    id:contact-link    Hubungi kami  
    Element Text Should Be    class:facet-title    Ketersediaan
    Element Text Should Be    class:myaccount-title    AKUN ANDA 

