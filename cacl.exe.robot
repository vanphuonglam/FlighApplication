*** Settings ***
Library           SeleniumLibrary
Library           AutoItLibrary

*** Variables ***
${SW_MAXIMIZE}    3
${SW_SHOW}        5
${SW_MINIMIZE}    6
${SW_SHOWDEFAULT}    10
${a}              ${EMPTY}

*** Test Cases ***
Run_Program
    Run    notepad.exe    ${EMPTY}    5
    Wait For Active Window    Untitled - Notepad
    Send    Welcome To AutoIt!    1
    ${a}    Statusbar Get Text    Untitled - Notepad    \    1
    log    ${a}
    Run    calc.exe
    ${a}    Control click    Calculator    \    ApplicationFrameInputSinkWindow1
    log    ${a}
