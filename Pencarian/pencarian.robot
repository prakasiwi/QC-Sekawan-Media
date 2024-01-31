*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    ../login.robot

*** Keywords ***
Scroll Page Down
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);

*** Test Cases ***
Pencarian Data
    login
    Click Element    //*[@id="kt_aside_menu"]/ul/li[3]/a
    Sleep    3s
    Input Text    //*[@id="table-inputpemilih_dtSearch"]    3262353232623230
    Scroll Page Down
    Sleep    2s
    Clear Element Text    //*[@id="table-inputpemilih_dtSearch"]
    Input Text    //*[@id="table-inputpemilih_dtSearch"]    yusuf
    Sleep    2s
    Clear Element Text    //*[@id="table-inputpemilih_dtSearch"]
    Input Text    //*[@id="table-inputpemilih_dtSearch"]    jalan menta
    Sleep    2s
    Clear Element Text    //*[@id="table-inputpemilih_dtSearch"]
    Input Text    //*[@id="table-inputpemilih_dtSearch"]    TPS001
    Sleep    2s