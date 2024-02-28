*** Settings ***
Documentation     A test suite with a single test for valid login.
Library           SeleniumLibrary


*** Variables ***
${SERVER}         localhost:8080
${BROWSER}        Chrome
${DELAY}          1
${INDEX URL}    http://${SERVER}/gb/
${thai}    /img/flages/th.png


*** Test Cases ***
Open Event Home Page:   #Eng to thai
    Open Browser    ${INDEX URL} 
    Click Element     xpath=//a[@title="ภาษาไทย (Thai)"]
    Title Should Be    Shop
    Element Text Should Be    id:contact-link    ติดต่อเรา  
    Element Text Should Be    class:products-section-title    สินค้ายอดนิยม 
    Element Text Should Be    class:myaccount-title    บัญชีของคุณ  

Open Event New Product Page:
    Open Browser    ${INDEX URL} 
    Click Element    id:link-product-page-new-products-1
    Title Should Be    New products
    Click Element     xpath=//a[@title="ภาษาไทย (Thai)"]
    Title Should Be    สินค้าใหม่ 
    Element Text Should Be    id:contact-link    ติดต่อเรา  
    Element Text Should Be    id:js-product-list-header   สินค้าใหม่
    Element Text Should Be    class:myaccount-title    บัญชีของคุณ 

Open Event clothes Page:
    Open Browser    ${INDEX URL} 
    Click Link    http://localhost:8080/gb/3-clothes
    Title Should Be    Clothes
    Click Element     xpath=//a[@title="ภาษาไทย (Thai)"]
    Title Should Be    เสื้อ
    Element Text Should Be    id:contact-link    ติดต่อเรา  
    Element Text Should Be    class:facet-title    สถานะสินค้า
    Element Text Should Be    class:myaccount-title    บัญชีของคุณ 

