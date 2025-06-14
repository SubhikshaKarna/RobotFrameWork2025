*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://demoqa.com/alerts

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://button[@id='alertButton']
        Sleep    2s
        Handle Alert    action=ACCEPT       timeout=3
        Click Element    xpath://button[@id='timerAlertButton']
        Sleep    2s
        Handle Alert    action=ACCEPT     timeout=8
        Sleep    2s
        Click Element    xpath://button[@id='confirmButton']
        Sleep    2s
        Handle Alert    action=ACCEPT       timeout=3
        Sleep    2s
        Click Element    xpath://button[@id='promtButton']
        Sleep    2s
        Input Text Into Alert    Hello
        Sleep    2s
        Close Browser