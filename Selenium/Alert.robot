*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
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