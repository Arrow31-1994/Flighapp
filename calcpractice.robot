*** Settings ***
Library           SeleniumLibrary
Library           AutoItLibrary

*** Test Cases ***
opencal
    Run    calc.exe
    Win Wait Active    Calculator
    Control Click    Calculator    \    button10

notepad
    Run    notepad.exe
    Win Wait Active    Untitled - Notepad
    Control Set Text    Untitled - Notepad    \    Edit1    New line
    Control Send    Untitled - Notepad    \    Edit1    woow
    Process Close    notepad.exe
