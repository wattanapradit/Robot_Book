*** Settings ***
Library         Selenium2Library
Resource        Obj.robot
Resource        Var.robot
*** Keywords ***  
Accept Alert0
    Sleep  2s
    wait and click element   ${alert_login} 
Accept Alert1
    Sleep  2s
    Handle Alert  accept  2s
Accept Alert2
    sleep  2s
    Handle Alert  accept   timeout=5s
Accept Yes
    sleep  2s
    wait and click element   ${btn_yes} 
Accept No
    sleep  2s
    wait and click element   ${btn_no}
Accept OK
    sleep  2s
    wait and click element   ${btn_ok}   

#---------------login---------------------------------
Type login username
    [Arguments]   ${login_value}
    wait and input text  ${input_user}   ${login_value}
Type login password
    [Arguments]   ${login_value}
    wait and input text  ${input_pass}   ${login_value}
Click button login
    wait and click element   ${btn_login} 
#--------------------Category----------------------
Goto Category 
    wait and click element   ${btn_category} 
Category Pageing
    Click Link   xpath=(//a[contains(text(),'2')])
    #Click Link   xpath=(//a[contains(text(),'3')])
    #Click Link   xpath=(//a[contains(text(),'›')])
    #Click Link   xpath=(//a[contains(text(),'»')])
    Sleep  1s
#--------------------Search Category
Category Search   
   [Arguments]    ${search_value}
    wait and input text   ${search_category}   ${search_value}
#--------------------Create Category
Click Create Category
    wait and click element    ${create_category} 
Type nameTh
    [Arguments]   ${namemovie_value}
    wait and input text  ${create_name_TH}     ${namemovie_value}
Type nameEN
    [Arguments]   ${namemovie_value}
    wait and input text  ${create_name_EN}     ${namemovie_value}
Click Save Create Category
    wait and click element   ${create_btnsave}
#--------------------Update Category
Click Update Category
   wait and click button    ${update_category}  
Type edit nameTh
    [Arguments]   ${namemovie_value}
    wait and input text  ${update_name_TH}     ${namemovie_value}
Type edit nameEN
    [Arguments]   ${namemovie_value}
    wait and input text  ${update_name_EN}     ${namemovie_value}
Click Save Update Category
    wait and click element    ${update_btnsave}   
#--------------------Delete Category 
Category Delete Category
    wait and click button    ${delete_category}  
#--------------------Customer----------------------
Goto Customer 
    wait and click element   ${btn_customers} 
    Sleep  1s
Customer Pageing
    Click Link   xpath=(//a[contains(text(),'2')])
     Sleep  1s
    Click Link   xpath=(//a[contains(text(),'›')])
     Sleep  1s
    #Click Link   xpath=(//a[contains(text(),'»')])
#--------------------Create Customer
Click Create Customer
    wait and click element     ${create_customer}
Type customerName
    [Arguments]   ${data_value}
    wait and input text  ${create_customerName}      ${data_value}
Type domain
    [Arguments]   ${data_value}
    wait and input text  ${create_domain}       ${data_value}
Type IP
    [Arguments]   ${data_value}
    wait and input text  ${create_ipAddress}         ${data_value}
Type tel
    [Arguments]   ${data_value}
    wait and input text  ${create_tel}          ${data_value}
Type address
    [Arguments]   ${data_value}
    wait and input text  ${create_address}         ${data_value}
Type postCode
    [Arguments]   ${data_value}
    wait and input text  ${create_postCode}         ${data_value}          
Type userName
    [Arguments]   ${data_value}
    wait and input text  ${create_userName}         ${data_value}
Type userEmail
    [Arguments]   ${data_value}
    wait and input text  ${create_userEmail}         ${data_value}
Type pass
    [Arguments]   ${data_value}
    wait and input text  ${create_pass}         ${data_value}
Type conpass
    [Arguments]   ${data_value}
    wait and input text  ${create_conpass}         ${data_value}  
admin avatar
    wait and click choose file   ${create_avatar}      ${create_pathpic} 
Crop Avatar
    wait and click element    ${btn_croppic}      #wait programer input id or name
Save Create Customer
    wait and click element    ${save_btncreate}   #wait programer input id or name
#--------------------Search Customer
Customer Search   
   [Arguments]    ${search_value}
    wait and input text  ${search_customer}    ${search_value}
    Sleep  2s
#--------------------Update Customer
Click Update Customer
    wait and click button    ${update_customer}
Click Save Update Customer
    wait and click element    ${save_update_customer}
Clear text customerName
    wait and Clear text    ${create_customerName} 
#--------------------Delete Customer
Click Delete Customer
    wait and click element    ${delete_customer}
#-----------Roles & Permissions-----------
Goto Permissions 
    wait and click element   ${btn_Permissions}
    Sleep  1s  
Click Create Permissions
    wait and click button    ${create_Permissions}
    Sleep  1s  
Type Permissions_name
    [Arguments]    ${data_value}
    wait and input text   ${Permissions_name}     ${data_value}  
Choosee Permissions_name   
    wait and click element    ${Permissions_impose}  
    wait and click element    ${Permissions_impose_choose1} 
    wait and click element    ${Permissions_impose_delete_choose}
    wait and click element    ${Permissions_impose} 
    wait and click element    ${Permissions_impose_choose2} 
Save Create Permissions
    wait and click element    ${btn_Permissions__create_save}    
Permissions Pageing
    Click Link   xpath=(//a[contains(text(),'2')])
    Click Link   xpath=(//a[contains(text(),'›')])
    #Click Link   xpath=(//a[contains(text(),'»')])
    Sleep  1s
Permissions Search   
   [Arguments]    ${search_value}
    wait and input text   ${search_Permissions}     ${search_value}
    Sleep  2s
#--------------------Update Permissions
Click Update Permissions
    wait and click button    ${update_Permissions}
Update Permissions name
    [Arguments]    ${data_value}
    wait and input text   ${Update_Permissions_name}    ${data_value}   
Clear text Update Permissions name
    wait and Clear text     ${Update_Permissions_name} 
Click Save Update Permissions
    wait and click button    ${btn_Permissions_update_save}
    Sleep  1s 
#--------------------Delete Permissions
Click Delete Permissions
    wait and click element    ${delete_Permissions}
#-----------User-----------
Users Pageing
    wait and click Link   xpath=(//a[contains(text(),'2')])
     Sleep  1s
    wait and click Link   xpath=(//a[contains(text(),'›')])
     Sleep  1s
    #wait and click Link   xpath=(//a[contains(text(),'»')])
Goto User 
    wait and click element    ${btn_user}
    Sleep  1s 
Click Create User
    wait and click element    ${create_user}
User avatar
    wait and click choose file   ${create_user_avatar}      ${create_user_pathpic} 
Crop User Avatar
    wait and click element    ${btn_user_croppic}
Type U_name
    [Arguments]    ${data_value}
    wait and input text   ${type_user}      ${data_value} 
Type type_userEmail
    [Arguments]    ${data_value}
    wait and input text   ${type_userEmail}          ${data_value} 
Type type_password
    [Arguments]    ${data_value}
    wait and input text   ${type_password}           ${data_value}
Type type_passwordConfirm
    [Arguments]    ${data_value}
    wait and input text   ${type_passwordConfirm}           ${data_value} 
Choose user_name   
    wait and click element    ${type_role_user}
    wait and click element    ${choose_role_user}
Save Create user
    wait and click element    ${save_btncreate_user}
#--------------------Update Users
Click Update Users
    wait and click button    ${update_users}  
Click Choose User1
    wait and click element   ${click_choose_update_users}
    wait and click element   ${choose_update_users1} 
    Sleep  2s
Click Choose User2
    wait and click element   ${click_choose_update_users}
    wait and click element   ${choose_update_users2} 
    Sleep  2s
Click Save Update Users
    wait and click button    ${save_btnupdate_user}  
#--------------------Delete Users
User Delete
    wait and click element    ${delete_users}
#--------------------Ban Users
Ban Users
    wait and click element    ${ban_users}
#--------------------Search Users
Users Search    
   [Arguments]    ${search_value}
    wait and input text  ${search_customer}    ${search_value}
    Sleep  2s

#-----------Profile-----------
Goto profile 
    wait and click element    ${btn_Profile} 
Click Change Pass
    wait and click element    ${change_password}
Type type_change_oldPassword
    [Arguments]    ${data_value}
    wait and input text   ${change_oldPassword}  ${data_value} 
Type type_change_newPassword
    [Arguments]    ${data_value}
    wait and input text   ${change_newPassword}  ${data_value} 
Type type_change_confirmPassword
    [Arguments]    ${data_value}
    wait and input text   ${change_confirmPassword}  ${data_value} 
Click save change Pass
    wait and click element    ${savechange_Password} 
Click update
    wait and click element    ${update_profile} 
User avatar profile
    wait and click choose file   ${update_avatar_profile}      ${update_pathpic}    
Crop User Avatar profile
    wait and click element    ${btn_user_croppic} 
Crop Update Avatar
    Sleep  1s
    wait and click element    ${btn_update_croppic}   
Clear text profile
    Sleep  1s
    wait and Clear text       ${update_user_profile}
Type update_user_profile
    [Arguments]    ${data_value}
    wait and input text   ${update_user_profile}   ${data_value} 
Click save update_profile
    wait and click element    ${save_update_profile}  

#-----------Series-----------
Goto Series 
    wait and click element     ${btn_Series}  
Click Create Series
    wait and click element    ${create_series} 
Series poster Vertical
    wait and click choose file   ${Series_Vertical}    ${path_series_Vertical}
    Sleep  1s
    wait and click element   ${btn_v_croppic} 
Series poster Horizontal
    wait and click choose file   ${Series_Horizontal}    ${path_series_Horizontal}
    Sleep  1s
    wait and click element   ${btn_h_croppic} 
Type season_No
    [Arguments]    ${data_value}
    wait and input text   ${season_No}    ${data_value} 
Type series_name
    [Arguments]    ${data_value}
    wait and input text   ${series_name}    ${data_value} 
Type series_nameEn
    [Arguments]    ${data_value}
    wait and input text   ${series_nameEn}   ${data_value} 
Choose rate 
    wait and click element    ${series_rate}  
    wait and click element    ${choose_rate} 
Type_series_Trailer_url
    [Arguments]    ${data_value}
    wait and input text   ${Type_series_Trailer}     ${data_value} 
Type_series_title
    [Arguments]    ${data_value}
    wait and input text   ${Type_series_title}    ${data_value} 
Type_series_titleEn
    [Arguments]    ${data_value}
    wait and input text   ${Type_series_titleEn}     ${data_value} 
Type_series_description
    [Arguments]    ${data_value}
    wait and input text   ${Type_series_description}     ${data_value}
Type_series_descriptionEn
    [Arguments]    ${data_value}
    wait and input text   ${Type_series_descriptionEn}     ${data_value} 
Type_series_actors
    [Arguments]    ${data_value}
    wait and input text   ${Type_series_actors}     ${data_value} 
Type_series_actorsEn
    [Arguments]    ${data_value}
    wait and input text   ${Type_series_actorsEn}     ${data_value} 
Type_series_directors
    [Arguments]    ${data_value}
    wait and input text   ${Type_series_directors}     ${data_value}
Type_series_directorsEn
    [Arguments]    ${data_value}
    wait and input text   ${Type_series_directorsEn}     ${data_value}
Type_series_authors
    [Arguments]    ${data_value}
    wait and input text   ${Type_series_authors}     ${data_value} 
Type_series_authorsEn
    [Arguments]    ${data_value}
    wait and input text   ${Type_series_authorsEn}     ${data_value}
Type_Release Date     #for safari
    [Arguments]    ${data_value}
    wait and input text   ${date_series}       ${data_value}
Click Choose Series Category
    wait and click element   ${click_Series_Category}
    wait and click element   ${click_choose_Series_Category}
Click Choose Series Package
    wait and click element   ${click_Series_Package}
    wait and click element   ${click_choose_Series_Package} 
Click Save Series 
    wait and click button    ${click_save_series}  
#-----------Update Series -----------
Goto Goto detail 
    wait and click element     ${click_detail}  
Click click_update_series
    wait and click element    ${click_update_series} 
Series update_Series_Vertical
    wait and click choose file   ${update_Series_Vertical}    ${update_path_series_Vertical}
    Sleep  1s
    wait and click element   ${update_btn_v_croppic}  
Series update_Series_Horizontal
    wait and click choose file  ${update_Series_Horizontal}    ${update_path_series_Horizontal}
    Sleep  1s
    wait and click element  ${update_btn_h_croppic} 
Type update_season_No
    [Arguments]    ${data_value}
    wait and input text   ${update_season_No}    ${data_value} 
Type update_series_name
    [Arguments]    ${data_value}
    wait and input text   ${update_series_name}    ${data_value} 
Type update_series_nameEn
    [Arguments]    ${data_value}
    wait and input text   ${update_series_nameEn}   ${data_value} 
Update Choose rate  
    wait and click element    ${update_series_rate}  
    wait and click element    ${update_choose_rate} 
Type update_series_Trailer_url
    [Arguments]    ${data_value}
    wait and input text   ${update_series_Trailer_url}     ${data_value} 
Type update_series_title
    [Arguments]    ${data_value}
    wait and input text   ${update_series_title}    ${data_value} 
Type update_series_titleEn
    [Arguments]    ${data_value}
    wait and input text   ${update_series_titleEn}     ${data_value} 
Type update_series_description
    [Arguments]    ${data_value}
    wait and input text   ${update_series_description}     ${data_value}
Type update_series_descriptionEn
    [Arguments]    ${data_value}
    wait and input text   ${update_series_descriptionEn}     ${data_value} 
Type update_series_actors
    [Arguments]    ${data_value}
    wait and input text   ${update_series_actors}     ${data_value} 
Type update_series_actorsEn
    [Arguments]    ${data_value}
    wait and input text   ${update_series_actorsEn}     ${data_value} 
Type update_series_directors
    [Arguments]    ${data_value}
    wait and input text   ${update_series_directors}     ${data_value}
Type update_series_directorsEn
    [Arguments]    ${data_value}
    wait and input text   ${update_series_directorsEn}     ${data_value}
Type update_esries_authors
    [Arguments]    ${data_value}
    wait and input text   ${update_esries_authors}     ${data_value} 
Type update_series_authorsEn
    [Arguments]    ${data_value}
    wait and input text   ${update_series_authorsEn}     ${data_value}
Type update_date_series    #for safari
    [Arguments]    ${data_value}
    wait and input text   ${update_date_series}       ${data_value}
Click update Series Category
    wait and click element   ${update_remove_Category}
    sleep  2s
    wait and click element   ${update_click_Series_Category}
    wait and click element   ${update_click_choose_Series_Category}
Click update Series Package
    wait and click element   ${update_remove_Package}  
    sleep  2s
    wait and click element   ${update_click_Series_Package}
    wait and click element   ${update_click_choose_Series_Package} 
Click Save update Series 
    wait and click button    ${update_click_save_series}  
#--------------------Search series
Series Search   
   [Arguments]    ${search_value}
    wait and input text   ${search_series}    ${search_value}
    Sleep  2s
#-----------delete series-----------
Click delete Series
    wait and click element    ${click_delete_series}  
#-----------EP -----------
Type_Ep_numberEpisode
    [Arguments]    ${data_value}
    wait and input text   ${Type_Ep_numberEpisode}     ${data_value} 
Type_Ep_name
    [Arguments]    ${data_value}
    wait and input text   ${Type_Ep_name}     ${data_value} 
Type_Ep_nameEn
    [Arguments]    ${data_value}
    wait and input text   ${Type_Ep_nameEn}     ${data_value}
Type_Ep_runTime
    [Arguments]    ${data_value}
    wait and input text   ${Type_Ep_runTime}     ${data_value} 
Type_Ep_releaseDate
    [Arguments]    ${data_value}
    wait and input text   ${Type_Ep_releaseDate}     ${data_value}
Type_Ep_link
    [Arguments]    ${data_value}
    wait and input text   ${Type_Ep_link}      ${data_value}
Type_Ep_description
    [Arguments]    ${data_value}
    wait and input text   ${Type_Ep_description}     ${data_value}
Type_Ep_descriptionEn
    [Arguments]    ${data_value}
    wait and input text   ${Type_Ep_descriptionEn}     ${data_value} 
Click Save Ep 
    wait and click element    ${click_save_ep}  
Click choose series  
    wait and click button    ${click_add_ep}
Click detail   
    wait and click element    ${click_detail} 
Click add Ep    
    wait and click element    ${click_add_ep}
Click create Ep    
    wait and click element    ${click_create_ep}  
#-----------Update EP -----------
Update Ep2
    wait and click element   ${update_ep} 
Click update Ep
    wait and click element   ${click_update_ep} 
Click Save update Ep
    wait and click element   ${click_save_update_ep} 
#-----------Delete EP -----------
Delete Ep3
    wait and click element   ${delete_ep} 
Click Delete Ep3
    wait and click element   ${click_delete_ep} 
#-----------Package -----------
Goto Packages
    wait and click element   ${btn_packages}
Click Package
    wait and click element   ${click_packages}
Type packages_name
    [Arguments]    ${data_value}
    wait and input text   ${Type_packages_name}    ${data_value}
Type price
    [Arguments]    ${data_value}
    wait and input text  ${Type_price}     ${data_value}
Choose day
    wait and click element   ${Choose_day}
    sleep  2s
    wait and click element   ${day}
Save package
    wait and click element   ${save_create_package} 
 #-----------seach Package -----------   
Package Search
    [Arguments]    ${data_value}
    wait and input text    ${search_package}   ${data_value}
#-----------update package -----------
Click update package
     wait and click element   ${btn_update_package}
Choose day2
    wait and click element   ${Choose_day2}
    sleep  2s
    wait and click element   ${day2}
save update package
    wait and click element   ${save_update_package}

Update_Type_packages_name
    [Arguments]    ${data_value}
    wait and input text   ${Update_Type_packages_name}    ${data_value}
Update_Type_price
    [Arguments]    ${data_value}
    wait and input text  ${Update_Type_price}     ${data_value}
Clear text Update packages_name
    wait and Clear text     ${Update_Type_packages_name} 
Clear text Update Type price 
    wait and Clear text    ${Update_Type_price} 
#-----------delete packages -----------
Delete packages
    wait and click element   ${btn_delete_package} 
#-----------movie -----------
Goto Movie
    wait and click element   ${btn_movie}
Type movies_Name
    [Arguments]    ${data_value}
    wait and input text   ${movies_Name}    ${data_value}
Type movies_NameEn
    [Arguments]    ${data_value}
    wait and input text   ${movies_NameEn}    ${data_value}
Type movies_runtime
    [Arguments]    ${data_value}
    wait and input text   ${movies_runtime}    ${data_value}
Type movies_link_url
    [Arguments]    ${data_value}
    wait and input text   ${movies_link_url}    ${data_value}
Type movies_Trailer_url
    [Arguments]    ${data_value}
    wait and input text   ${movies_Trailer_url}    ${data_value}
Type movies_title
    [Arguments]    ${data_value}
    wait and input text   ${movies_title}    ${data_value}
Type movies_titleEn
    [Arguments]    ${data_value}
    wait and input text   ${movies_titleEn}    ${data_value}
Type movies_description
    [Arguments]    ${data_value}
    wait and input text   ${movies_description}    ${data_value}
Type movies_descriptionEn
    [Arguments]    ${data_value}
    wait and input text   ${movies_descriptionEn}    ${data_value}
Type movies_date
    [Arguments]    ${data_value}
    wait and input text   ${movies_date}    ${data_value}
Type movies_actors
    [Arguments]    ${data_value}
    wait and input text   ${movies_actors}    ${data_value}
Type movies_actorsEn
    [Arguments]    ${data_value}
    wait and input text   ${movies_actorsEn}    ${data_value}
Type movies_directors
    [Arguments]    ${data_value}
    wait and input text   ${movies_directors}    ${data_value}
Type movies_directorsEn
    [Arguments]    ${data_value}
    wait and input text   ${movies_directorsEn}    ${data_value}
Type movies_authors
    [Arguments]    ${data_value}
    wait and input text   ${movies_authors}    ${data_value}
Type movies_authorsEn
    [Arguments]    ${data_value}
    wait and input text   ${movies_authorsEn}    ${data_value}
movies_Vertical
    wait and click choose file   ${movies_Vertical}    ${path_movies_Vertical}
    Sleep  2s
    wait and click element   ${movies_btn_v_croppic}  
movies_Horizontal
    wait and click choose file  ${movies_Horizontal}    ${path_movies_Horizontal}
    Sleep  2s
    wait and click element  ${movies_btn_h_croppic} 
Click Create Movie
    wait and click element   ${movies_click_create}  
movies Choose rate  
    wait and click element    ${movies_rate} 
    sleep  2s  
    wait and click element    ${movies_choose_rate} 
Click create movies Category
    #wait and click element   ${update_remove_Category}
    #sleep  2s
    wait and click element   ${movies_click_Category} 
    wait and click element   ${movies_click_choose_Category}
Click create movies Package
    #wait and click element   ${update_remove_Package}  
    #sleep  2s
    wait and click element   ${movies_click_Package} 
    wait and click element   ${movies_click_choose_Package}  
Save Create Movie
    wait and click element   ${movies_click_save_create}    
#--------------------Search movie
Search movie   
   [Arguments]    ${search_value}
    wait and input text   ${search_movies}    ${search_value}
    Sleep  2s
#-----------update movie -----------
click update_movie
    wait and click element   ${click_update_movie}    
update movies_Vertical
    wait and click choose file   ${update_movies_Vertical}    ${update_path_movies_Vertical}
    Sleep  1s
    wait and click element   ${update_movies_btn_v_croppic}  
update movies_Horizontal
    wait and click choose file  ${update_movies_Horizontal}    ${update_path_movies_Horizontal}
    Sleep  1s
    wait and click element  ${update_movies_btn_h_croppic} 
update movies Category
    wait and click element   ${movies_remove_Category}
    sleep  2s
    wait and click element   ${update_movies_click_Category} 
    wait and click element   ${update_movies_click_choose_Category}
update movies Package
    wait and click element   ${movies_remove_Package}
    sleep  2s
    wait and click element   ${update_movies_click_Package} 
    wait and click element   ${update_movies_click_choose_Package}
update movies Choose rate  
    wait and click element    ${update_movies_rate}     
    wait and click element    ${update_movies_choose_rate}  
Save update Movie
    wait and click element   ${movies_click_save_update}   
#-----------delete movie -----------
Delete movies
    wait and click element   ${click_delete_movie} 

#--------------------Member----------------------
Goto Member 
    wait and click element   ${btn_Member}      
Member Pageing
    Sleep  1s
    Click Link   xpath=(//a[contains(text(),'2')])
    Sleep  1s
    Click Link   xpath=(//a[contains(text(),'›')])
    Sleep  1s
    Click Link   xpath=(//a[contains(text(),'»')])
    Sleep  1s