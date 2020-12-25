*** Variables ***
${BACKENDURL}     http://192.168.24.183:8000/   
${BACKENDURL1}    http://192.168.24.192:8000/ 
${BACKENDURL2}    http://localhost:3000/  
${API_back}       http://192.168.24.192:5000

${btn_yes}    //*[@class="swal2-confirm swal2-styled"] 
${btn_no}    //*[@class="swal2-cancel swal2-styled"] 
${btn_ok}    //*[@class="swal2-confirm swal2-styled"] 
@{chrome_arguments}    --disable-infobars    --headless    --disable-gpu
#-----------login-----------
${input_user}           //*[@name="email"]
${input_pass}           //*[@name="password"]
${input_user_fail}      //*[@name="email"]
${input_pass_fail}      //*[@name="password"]
${btn_login}            //*[@id="login"] 
${alert_login}          css=button.swal2-confirm.swal2-styled
#-----------Category-----------


