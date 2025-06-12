*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${elements}=        Get WebElements   xpath://input[@class='radioButton']
        FOR    ${element}    IN    @{elements}
            Click Element   ${element}
            Sleep      2s
        END
        ${elements}=        Get WebElements   xpath://input[@type='checkbox']
        FOR    ${element}    IN    @{elements}
            Click Element   ${element}
            Sleep      2s
        END
        Close Browser