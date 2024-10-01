*** Settings ***
Library    Browser

*** Variables ***
${URL}     https://google.com
${title}    google

*** Test Cases ***
Open Browser And Check Title
    Open Browser    ${URL}    chromium
    ${title} =    Get Title
    Should Be Equal As Strings    ${title}    Google
    Close Browser
