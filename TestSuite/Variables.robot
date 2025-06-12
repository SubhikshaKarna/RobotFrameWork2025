*** Settings ***
Library     SeleniumLibrary
Variables       ./../variables.py

*** Variables ***
${name}   John
${city}   Pune
@{list1}        green      red     blue
&{dict}     username=Admin       password=admin123
*** Test Cases ***
Define variables
        Log    ${name}
        Log    ${city}
        Log    ${list1}
        Log    ${list1[0]}
        FOR    ${elements}      IN      @{LIST1}
            Log     ${elements}
        END
        Log    ${dict}[username]
        Log    ${dict}[password]

Set variables at Testcase level
        Set Test Variable     ${address}      ringroad
        Log     ${address}

Set variables at Suite level
        Log    ${username}
        Log    ${password}

