*** Settings ***
Library    SeleniumLibrary
Resource    ../login.robot

*** Keywords ***
Scroll Page Down
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);

*** Test Cases ***
Filter Data
    login
    Click Element    //*[@id="kt_aside_menu"]/ul/li[3]/a
    Sleep    3s
    Click Button    //*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[1]/div/div[2]/button
    Sleep    2s
    Select From List By Value    //*[@id="filter_provinsi_id"]    7fd2c16526aa7c1ab7a409a99590438c\
    Wait Until Element Contains   //*[@id="filter_kota_id"]   Rejang Lebong
    Select From List By Label    //*[@id="filter_kota_id"]    Rejang Lebong
    Wait Until Element Contains    //*[@id="filter_kecamatan_id"]    Curup Utara
    Select From List By Label    //*[@id="filter_kecamatan_id"]    Curup Utara
    Wait Until Element Contains    //*[@id="filter_kelurahan_id"]    Tunas Harapan
    Select From List By Label    //*[@id="filter_kelurahan_id"]    Tunas Harapan
    Wait Until Element Contains    //*[@id="filter_tps_id"]    TPS001 - Tunas Harapan
    Select From List By Label    //*[@id="filter_tps_id"]    TPS001 - Tunas Harapan
    Click Button    //*[@id="table-inputpemilih_id-modal"]/div/div/form/div[2]/button[2]
    Scroll Page Down
    Sleep    5s
