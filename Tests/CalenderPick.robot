*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://www.tutorialspoint.com/selenium/practice/date-picker.php
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://www.tutorialspoint.com/selenium/practice/date-picker.php
        Maximize Browser Window
        Click Element    id=datetimepicker1
        Sleep    5s
        Click Element    xpath=//div[contains(@class,'flatpickr-calendar')]//span[@aria-label='June 9, 2025']

        Close Browser
