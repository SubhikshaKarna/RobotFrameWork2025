https://the-internet.herokuapp.com/nested_frames
*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/nested_frames
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Select Frame    locator
        Close Browser