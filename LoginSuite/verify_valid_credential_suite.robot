*** Settings ***
Documentation         this suite will handle valid credential
...   test - tittle
Resource    ../Resource/CommonFunctionality.resource

Test Setup   Launch Browser
Test Teardown    Close Browser
Test Template       valid Credential Template

Library   DataDriver   file=../Test_data/orange_data.xlsx        sheet_name=Valid Credential

*** Test Cases ***
TC1

*** Keywords ***
valid Credential Template
      [Arguments]     ${username}   ${password}   ${expected_value}
      Input Text    id=txtUsername    ${username}
      Input Password    id=txtPassword    ${password}
      Click Element    id=btnLogin
      Page Should Contain    ${expected_value}


