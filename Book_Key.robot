*** Settings ***
Library         Selenium2Library
#Resource        Book_Obj.robot
Resource        Book_Var.robot
*** Keywords ***  
Wait Type 
    [Arguments]    ${locator}    ${txt_value}
    Wait Until Element Is Visible     ${locator}    30s
    Input Text    ${locator}    ${txt_value}
Wait Click
    [Arguments]    ${locator}
     Wait Until Element Is Visible     ${locator}   15s
     Click Element    ${locator}
     Sleep  1s
wait and click button
    [Arguments]    ${locator}
     Wait Until Element Is Visible     ${locator}    15s
     Click Element    ${locator}
wait and click Link
    [Arguments]    ${locator}
     Wait Until Element Is Visible     ${locator}    15s
     Click Link    ${locator}
wait and click choose file
    [Arguments]    ${locator}   ${AddFile}
    Wait Until Element Is Visible     ${locator}   15s
    Scroll Element Into View      ${locator} 
    Sleep  1s
    Choose File      ${locator}     ${AddFile}
    Sleep  1s
wait and Clear text
    [Arguments]    ${locator}   
    Wait Until Element Is Visible    ${locator}     15s
    Clear Element Text   ${locator} 
Select By Value
   [Arguments]     ${locator}     ${value}
   Wait Until Element Is Visible   ${locator}    15s
   Select From List By Value       ${locator}    ${value}
   List Selection Should Be        ${locator}    ${value} 
#------------------------------------------------
Check Element Visible
    [Arguments]    ${locator}
    ${present} =   Run Keyword And Return Status    Element Should Be Visible       ${locator}    10s
    [Return]    ${present}