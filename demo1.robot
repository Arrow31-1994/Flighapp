*** Settings ***
Library           ExcelLibrary
Library           SeleniumLibrary
Resource          userdefinedkeyword.txt    # demo
Library           DateTime

*** Variables ***
${var1}           4
${var2}           4
@{USER}           praveen    robotframework
&{credential}     username=praveen    password=praveen

*** Test Cases ***
TC1
    Should Be Equal    ${var1}    ${var2}

TC02
    [Tags]    login
    [Setup]    setupdemo
    Should Not Be Equal As Strings    @{USER}[0]    @{USER}[1]
    ${/}
    [Teardown]    teardowndemo

tc03
    Should Be Equal As Strings    &{credential}[username]    &{credential}[password]

tc04
    [Tags]    login
    Should be True    4    4

tc05
    [Template]    Should Be Equal As Integers    # template
    [Timeout]    2 minutes 20 seconds    # timeout
    4    4
    5    5
    6    6

tc06
    comparetwokeyword

*** Keywords ***
setupdemo
    Log To Console    This is setup

teardown demo
    Log To Console    This is teardown
