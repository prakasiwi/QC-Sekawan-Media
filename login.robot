*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${web}    chrome
${url}    https://aps-rejanglebong.skwn.dev/dev/index.php/login

*** Keywords ***
login
    Open Browser    ${url}    ${web}
    Maximize Browser Window
    Sleep    2s
    Input Text    //*[@id="username"]    candidat
    Input Password    //*[@id="password"]    password123
    Click Button    //*[@id="kt_login_signin_submit"]
    Sleep    5s

