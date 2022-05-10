*** Settings ***
Documentation         this suite will handle valid credential
...   test - tittle
Resource    ../Resource/CommonFunctionality.resource

Test Setup   Launch Browser
Test Teardown    Close Browser

Test Template       valid Credential Template

*** Test Cases ***
TC1    Admin   admin123  My Info
TC2    Admin   admin123  Welcome
*** Keywords ***
valid Credential Template
      [Arguments]     ${username}   ${password}   ${login}
      Input Text    id=txtUsername    ${username}
      Input Password    id=txtPassword    ${password}
      Click Element    id=btnLogin
      Page Should Contain    ${login}


