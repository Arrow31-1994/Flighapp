*** Settings ***
Library           DatabaseLibrary

*** Test Cases ***
tc01dataauto
    Connect To Database    pymssql    TestDB    TestNew    localhost    1433
