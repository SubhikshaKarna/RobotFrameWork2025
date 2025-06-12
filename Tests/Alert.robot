*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://the-internet.herokuapp.com/javascript_alerts
        Maximize Browser Window
        Click Element    xpath://button[@onclick='jsAlert()']
        Sleep    2s
        Handle Alert    action=ACCEPT       timeout=3
        Click Element    xpath://button[@onclick='jsConfirm()']
        Sleep    2s
        Handle Alert    action=DISMISS       timeout=3
        Click Element    xpath://button[@onclick='jsPrompt()']
        Sleep    2s
        Input Text Into Alert    Hello
        Sleep    2s
        Close Browser
