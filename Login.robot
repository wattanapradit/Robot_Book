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
    Wait Type    ${inputisbn}    123123123123123123
    Wait Type    ${inputblog_url}   333
    Wait Type    ${inputyoutube_url}   444444
    Wait Click   ${choosebook_type} 
    Wait Click   ${choosebook_type2} 
    Wait Type    ${inputbook_name}    ชื่อหนังสือค่าๆๆ
    Wait Type    ${inputblame_position}   ชื่อหนังสือค่าๆๆ//
    wait click choose file  ${clickname_picture}  ${pic_name_picture} 
    wait click choose file  ${clickblame_position}  ${pic_name_picture} 
    Wait Type  ${inputwriter}  321
    Wait Type  ${inputalias}   123
    Wait Type  ${inputproduct_price}  788
    Wait Type  ${inputprice}   566
    Wait Type  ${inputpages}   44
    Wait Type  ${inputpim_time}   4
    Wait Type  ${inputpim_year}   2014

# robot -d Results_web\Login Login.robot
# pabot --processes 1  --outputdir Results_web\Login  Login.robot