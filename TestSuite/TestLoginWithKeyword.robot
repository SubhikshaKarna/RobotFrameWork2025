*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Verify Login functionality
        [Tags]      Sanity
        Log     user enters the username
        Log     user enters the password
        Log     user clicks on the Login button
        Log     User is navigated to home page

*** Test Cases ***
Verify login functionalty with Keyword
        Login

*** Keywords ***
Login
        Log     user enters the username
        Log     user enters the password
        Log     user clicks on the Login button
        Log     User is navigated to home page

