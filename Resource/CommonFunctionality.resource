*** Settings ***
Documentation
...

Library   SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}     CHROME
${URL}     https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser
     Append To Environment Variable    path     ${EXECDIR}${/}driver
     Open Browser     browser=${BROWSER}
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Set Screenshot Directory    ${EXECDIR}${/}screenshot
     Go To    url=${URL}