*** Settings ***
Test Teardown     close browser
Library           SeleniumLibrary
Library           ExcelLibrary
Resource          commonword.txt

*** Test Cases ***
tc01Login and object on page
    loginandnavigate
    Iframe
    objectsonpage
    [Teardown]

TC02 defaultemailpass
    loginandnavigate
    Iframe
    defaultusernamepass
    [Teardown]

TC03 usernot entered email
    loginandnavigate
    Iframe
    emptyusername

tc04 password not entered
    loginandnavigate
    Iframe
    emptypassword

tc05nousernameno pass
    loginandnavigate
    Iframe
    emptyusername and password

tc06 invalidusernamepass
    loginandnavigate
    Iframe
    invalid usernamepassw

tc07validusernamepass
    loginandnavigate
    Iframe
    login
    Select Frame    id=iframe-115
    verifyafterlogin
