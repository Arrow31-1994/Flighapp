*** Settings ***
Library           SeleniumLibrary
Resource          Commonkeyword.txt

*** Variables ***
@{cities}
${city}           ${EMPTY}
${textfield}      ${EMPTY}

*** Test Cases ***
openbrowser
    Open Browser    http://ngendigital.com/practice    Chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Select From List By Index    id:FromCity    1
    Close Browser

Textbox
    Open Browser    http://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Page Should Contain Textfield    xpath://input[@name='FirstName']    It has failed    Debug
    Input Text    xpath://input[@name='FirstName']    Ngen
    Sleep    2
    Textfield Should Contain    xpath://input[@name='FirstName']    Ngen
    Sleep    2
    Clear Element Text    xpath://input[@name='FirstName']
    Close Browser

button
    Open Browser    http://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Click Button    xpath://input[@type='button']
    Sleep    2
    Close Browser

checkbox
    Open Browser    http://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Page Should Contain Checkbox    //input[@value='bmw']
    Select Checkbox    //input[@value='bmw']
    Sleep    2
    Checkbox Should Be Selected    //input[@value='bmw']
    Sleep    2
    Unselect Checkbox    //input[@value='bmw']
    Sleep    2
    Close Browser

list
    Open Browser    http://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Page Should Contain List    css:#FromCity
    Sleep    2
    @{cities}    Get List Items    css:#FromCity
    FOR    ${city}    IN    @{cities}
    LOG    ${city}
    END
    Sleep    2
    Close Browser

radio
    Open Browser    http://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Page Should Contain Radio Button    xpath://input[@value='flight']
    Sleep    2
    Select Radio Button    flight    flight
    Sleep    2
    Radio Button Should Be Set To    flight    flight
    Sleep    2
    [Teardown]    close browser

image
    Open Browser    http://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Click Image    xpath://*[@id="n-52555261-navBarId"]/div[1]/div/a/img
    Sleep    2
    [Teardown]    close browser

table
    Open Browser    http://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Page Should Contain Element    xpath:/html/body/fieldset[7]/table
    Table Should Contain    xpath:/html/body/fieldset[7]/table    Country
    Table Cell Should Contain    xpath:/html/body/fieldset[7]/table    2    3    Canada
    Table Column Should Contain    xpath:/html/body/fieldset[7]/table    1    Justin Trudeau
    Sleep    2
    Table Row Should Contain    xpath:/html/body/fieldset[7]/table    5    Chancellor
    ${textfield}    Get Text    xpath://tbody/tr[4]/td[1]
    Log To Console    ${textfield}
    Should Be Equal As Strings    ${textfield}    Theresa May
    sleep    2
    [Teardown]    close browser

flightapp
    Open Browser    https://ngendigital.com/demo-application    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    loginappflight
    Sleep    2
    [Teardown]    close browser
