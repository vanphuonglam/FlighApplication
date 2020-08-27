*** Settings ***
Library           SeleniumLibrary
Library           AutoItLibrary
Resource          CommonUsedKeywords.txt

*** Test Cases ***
TC_1
    Login
    Enter Option
    Input Order
    Verify Confirmation
