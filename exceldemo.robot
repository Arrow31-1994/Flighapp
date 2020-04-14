*** Settings ***
Library           ExcelLibrary
Resource          Commonkeyword.txt
Library           SeleniumLibrary

*** Variables ***
${count}          ${EMPTY}
@{count1}
${var1}           ${EMPTY}

*** Test Cases ***
read demo
    Open Excel    C:/Robot/Demo/demo.xls
    Check Cell Type    Sheet1    2    1
    ${count}    Get Column Count    Sheet1
    @{count1}    Get Column Values    Sheet1    2
    FOR    ${count}    IN    @{count1}
        Log    ${count}
    END

excel1
    Open Excel    C:/Robot/Demo/demo1new.xls
    Put Number To Cell    sample    1    0    11
    Save Excel    demo2new.xls
