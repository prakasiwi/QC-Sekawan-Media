*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    ../login.robot

*** Keywords ***
Scroll Page Down
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);

*** Test Cases ***
Update Data
    login
    Click Element    //*[@id="kt_aside_menu"]/ul/li[3]/a
    Sleep    3s
    Input Text    //*[@id="table-inputpemilih_dtSearch"]    yusuf
    Scroll Page Down
    Sleep    2s
    Click Element    //*[@id="table-inputpemilih"]/tbody/tr[1]/td[8]/a[2]
    Sleep    2s
    Clear Element Text    //*[@id="pemilih_kk"]
    Sleep    2s
    Input Text    //*[@id="pemilih_kk"]    1234567890123456
    Sleep    2s
    Scroll Page Down
    Click Button    //*[@id="btn-simpan"]
    Sleep    2s
    # button simpan tidak berfungsi mengupadate data ketika semua form sudah terpenuhi