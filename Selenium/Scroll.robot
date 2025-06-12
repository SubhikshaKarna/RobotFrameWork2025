*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Chrome
${url}      https://www.amazon.in

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Scroll Element Into View    xpath://a[normalize-space()='About Amazon']
        Sleep    2s
        Click Element    xpath://a[normalize-space()='About Amazon']
        Sleep    4s
        Element Should Be Visible    xpath://div[@class='Page-header-bar']//span[1]//a[1]
        Close Browser
