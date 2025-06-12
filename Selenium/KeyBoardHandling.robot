*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/key_presses

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Press Key    xpath://input[@id='target']   T
        Sleep    2s
        Press Key    xpath://input[@id='target']    CNTRL
        Sleep    2s
        Press Key    xpath://input[@id='target']    SHIFT
        Sleep    2s

        Close Browser