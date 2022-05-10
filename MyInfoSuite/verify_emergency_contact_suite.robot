* Settings *
Documentation       enter emergency contact

Resource        ../Resource/CommonFunctionality.resource
Test Setup      launch browser
Test Teardown   Close Browser

* Test Cases *
TC1
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    xpath=//*[@id='btnLogin']
    Click Element    link=My Info
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    sathish
    Input Text    id=emgcontacts_relationship    brother
    Input Text    id=emgcontacts_homePhone    454554
    Input Text    id=emgcontacts_mobilePhone    44554
    Input Text    id=emgcontacts_workPhone    7887
    Click Element    id=btnSaveEContact
    Table Should Contain    id=frmEmpDelEmgContacts    sathish