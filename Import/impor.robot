*** Settings ***
Library    SeleniumLibrary
Resource    ../login.robot

*** Keywords ***
Scroll Page Down
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);

*** Test Cases ***
Impor Data
    login
    Click Element    //*[@id="kt_aside_menu"]/ul/li[3]/a
    Sleep    3s
    Click Button    //*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/button[2]
    Click Element    //*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/div/a[2]
    Sleep    2s
    Choose File    //*[@id="form_upload_pemilih"]/div[1]/div/div/input    ${CURDIR}/Data Pemilih 2024-01-31 00_12_19.xlsx
    Sleep    2s
    Click Button    //*[@id="form_upload_pemilih"]/div[2]/button[2]
    Sleep    2s
    Click Element    //*[@id="kt_body"]/div[8]/div/div[3]/button[3]
    Click Element    //*[@id="kt_body"]/div[8]/div/div[3]/button[1]
    Sleep    2s
    

