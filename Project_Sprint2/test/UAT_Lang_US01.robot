*** Settings ***
Documentation     A test suite with a single test for valid login.
Library           SeleniumLibrary


*** Variables ***
${SERVER}         localhost:8080
${BROWSER}        Chrome
${DELAY}          1
${HOME URL}    http://${SERVER}/gb/
${thai}    /img/flages/th.png

*** Test Cases ***
Open Event Home Page:
    Open Browser    ${HOME URL}   
    Title Should Be    Shop
    Click Link    http://localhost:8080/gb/
    Title Should Be    Shop  
    Click Link  http://localhost:8080/th/
    Title Should Be    Shop
    Click Link  http://localhost:8080/id/
    Title Should Be    Shop

Change languages on New Product Page:
    Open Browser    ${HOME URL}
    Click Element    id:link-product-page-new-products-1
    Title Should Be    New products
    Click Link   http://localhost:8080/th/สินค้าใหม่
    Title Should Be    สินค้าใหม่
    Click Link   http://localhost:8080/gb/new-products
    Title Should Be    New products
    Click Link   http://localhost:8080/id/produk-terbaru
    Title Should Be    Produk baru

Change languages on Login Page:
    Open Browser    ${HOME URL} 
    Click Element    id:_desktop_user_info
    Title Should Be    Login
    Click Link    http://localhost:8080/th/เข้าสู่ระบบ?back=http%3A%2F%2Flocalhost%3A8080%2Fgb%2F
    Title Should Be    เข้าสู่ระบบ
    Click Link    http://localhost:8080/gb/login?back=http%3A%2F%2Flocalhost%3A8080%2Fgb%2F
    Title Should Be    Login
    Click Link    http://localhost:8080/id/login?back=http%3A%2F%2Flocalhost%3A8080%2Fgb%2F
    Title Should Be    Login

Change languages on Category Page:
    Open Browser    ${HOME URL} 
    Click Element    id:category-3
    Title Should Be    Clothes
    Click Link    http://localhost:8080/th/3-clothes
    Title Should Be    เสื้อ
    Click Link    http://localhost:8080/gb/3-clothes
    Title Should Be    Clothes
    Click Link    http://localhost:8080/id/3-Pakaian
    Title Should Be    Pakaian

Change Home Page to Thai:
    Open Browser    ${HOME URL}   
    Title Should Be    Shop
    Click Link  http://localhost:8080/th/
    Title Should Be    Shop

 Change Home Page to Indonesian:
    Open Browser    ${HOME URL}   
    Title Should Be    Shop
    Click Link  http://localhost:8080/id/
    Title Should Be    Shop

Change Home Page to English:
    Open Browser    ${HOME URL}   
    Title Should Be    Shop
    Click Link  http://localhost:8080/gb/
    Title Should Be    Shop

