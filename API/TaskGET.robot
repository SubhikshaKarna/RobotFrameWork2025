*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}     https://videogamedb.uk:443/
${ENDPOINT}     api/v2/videogame


*** Test Cases ***
GET request example
        Create Session      jsonlaceholder     ${BASE_URL}
        ${response}=        GET on Session      jsonlaceholder     ${ENDPOINT}
        Log    ${response.status_code}
        Log    ${response.content}
        Should Be Equal As Numbers    ${response.status_code}    200
