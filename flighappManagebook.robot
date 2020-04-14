*** Settings ***
Test Teardown     close browser
Library           SeleniumLibrary
Resource          commonword.txt
Library           ExcelLibrary

*** Test Cases ***
tc01 roundtrip
    loginandnavigate
    Iframe
    login
    Select Frame    id=iframe-115
    verifyafterlogin
    validationonMB
    validatefromcity
    Logout

round trip To city
    loginandnavigate
    Iframe
    login
    Select Frame    id=iframe-115
    verifyafterlogin
    validationonMB
    validatetocity
    Logout

verify class rounndtrip
    loginandnavigate
    Iframe
    login
    Select Frame    id=iframe-115
    verifyafterlogin
    validationonMB
    validateclass

verifyraadiobutton not selected by radiobutton
    loginandnavigate
    Iframe
    login
    Select Frame    id=iframe-115
    verifyafterlogin
    validationonMB
    Radiobuttonvalidation

bookaflight totrontotoparis
    loginandnavigate
    Iframe
    login
    Select Frame    id=iframe-115
    verifyafterlogin
    validationonMB
    book a ecoflight

NYTOMUM
    loginandnavigate
    Iframe
    login
    Select Frame    id=iframe-115
    verifyafterlogin
    validationonMB
    nytomumu

businessclass
    loginandnavigate
    Iframe
    login
    Select Frame    id=iframe-115
    verifyafterlogin
    validationonMB
    bizzclass

negativeTC
    loginandnavigate
    Iframe
    login
    Select Frame    id=iframe-115
    verifyafterlogin
    validationonMB
    Click Element    xpath://button[contains(text(),'Get Fare')]
    Page Should Contain    Please choose one of Flight or Flight + Hotel!
