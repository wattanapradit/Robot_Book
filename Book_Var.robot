*** Variables ***
#-----------login-----------
${BACKENDURL}     https://book-stg.adessolab.com/ 
${username}  admin123
${password}  123123123
${Clicklogin}         //a[contains(text(),'Login')]
${input_user}         //*[@id="username"]
${input_pass}         //*[@id="password"]
${btnlogin}           //button[@type='submit']

${clickbook}       xpath=(//a[contains(@href, '#')])[3]
${clickaddbook}   //li[3]/ul/li/a/p
${inputisbn}      //*[@id="isbn"]
${inputblog_url}      //*[@id="blog_url"]
${inputyoutube_url}   //*[@id="youtube_url"]
${choosebook_type}     xpath=//select[@name="book_type"]
${choosebook_type2}    xpath=//select/option[5]
${inputbook_name}      //*[@id="book_name"]
${inputblame_position}       //*[@id="blame_position"]
${clickname_picture}         //input[@id='name_picture']
${clickblame_position}       //*[@id="blame_picture"]
${pic_name_picture}      /Users/ads/Desktop/4kPic/Portrait/soulcalibur-lost-swords-game-4k-s1-1080x1920.jpg
