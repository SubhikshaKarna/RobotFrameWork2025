*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/checkboxes

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${elements}=        Get WebElements   xpath:(//input[@type='checkbox'])
        FOR    ${element}    IN    @{elements}
            Click Element   ${element}
            Sleep      2s
        END
        Close Browser