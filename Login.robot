*** Settings ***
Library         Selenium2Library
Library         BuiltIn
Resource        Book_Key.robot
Resource        Book_Var.robot
Suite Setup     Run keywords
    ...         Open Browser  ${BACKENDURL}      chrome                       AND
    ...         Maximize Browser Window
Test Setup      Sleep  2s
Suite teardown     Close browser

*** Test Cases ***

login  
    Wait Click    ${Clicklogin}
    Wait Type  ${input_user}   admin123        #input user 
    Wait Type  ${input_pass}   123123123       #input pass 
    Wait Click   ${btnlogin}

Add book
    Wait Click   ${clickbook}  
    Wait Click   ${clickaddbook}
    
    wait click choose file  ${clickname_picture}  ${pic_name_picture} 

    Wait Type    ${inputisbn}    123123123123123123
    Wait Type    ${inputblog_url}   333
    Wait Type    ${inputyoutube_url}   444444
    Wait Click   ${choosebook_type} 
    Wait Click   ${choosebook_type2} 
    Wait Type    ${inputbook_name}    ชื่อหนังสือค่าๆๆ
    Wait Type    ${inputblame_position}   ชื่อหนังสือค่าๆๆ//
 
# robot -d Results_web\Login Login.robot
# pabot --processes 1  --outputdir Results_web\Login  Login.robot