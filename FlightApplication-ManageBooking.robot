*** Settings ***
Test Teardown     close \ browser
Library           SeleniumLibrary
Resource          Commonkeywords.robot
Resource          ExcelDataFetch.txt

*** Test Cases ***
TC01_Book a Flight - Round Trip between To and From Destinations_Verify 'From' cities
    Loginandnavigatetourl
    Login
    Change to iframe    id = iframe-115
    verifyafterlogin
    Validationonmanagebooking
    ValidateFromCity
    Logout

TC02_Book a Flight - Round Trip between To and From Destinations_Verify 'To' cities
    Loginandnavigatetourl
    Login
    Change to iframe    id = iframe-115
    verifyafterlogin
    Validationonmanagebooking
    ValidateToCity

TC03_Book a Flight - Round Trip between To and From Destinations_Verify 'Class'
    Loginandnavigatetourl
    Login
    Change to iframe    id = iframe-115
    verifyafterlogin
    Validationonmanagebooking
    Validateclass

TC04_Book a Flight - Verify Radio button should not be select by default
    Loginandnavigatetourl
    Login
    Change to iframe    id = iframe-115
    verifyafterlogin
    Validationonmanagebooking
    Radiobutton Validation

TC05_Book a Flight - One way Trip between To and From Destinations_From Toronto to Paris_Economy
    Loginandnavigatetourl
    Login
    Change to iframe    id = iframe-115
    verifyafterlogin
    Validationonmanagebooking
    Book firstfare flight

TC06 Newyork to Mumbai
    Loginandnavigatetourl
    Login
    Change to iframe    id = iframe-115
    verifyafterlogin
    Validationonmanagebooking
    Book economy

TC07-Businessclass
    Loginandnavigatetourl
    Login
    Change to iframe    id = iframe-115
    verifyafterlogin
    Validationonmanagebooking
    Book business

TC08-Select either Flight/Hotel
    Loginandnavigatetourl
    Login
    Change to iframe    id = iframe-115
    verifyafterlogin
    Validationonmanagebooking
    Click Element    xpath://button[contains(text(),'Get Fare')]
    Wait Until Keyword Succeeds    2    1    Page Should Contain    Please choose one of Flight or Flight + Hotel!    INFO
