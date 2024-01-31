*** Settings ***
Library    SeleniumLibrary
Resource    ../login.robot

*** Keywords ***
Scroll Page Down
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);

*** Test Cases ***
Penambahan Data
    login
    Sleep    2s
    Click Element    //*[@id="kt_aside_menu"]/ul/li[3]/a
    Sleep    3s
    Click Button    //*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/button[1]
    Sleep    3s
    Input Text    //*[@id="pemilih_kk"]    3501123456789001
    Input Text    //*[@id="pemilih_nik"]    3501123456789002
    Input Text    //*[@id="pemilih_nama"]    Galih
    Input Text    //*[@id="pemilih_alamat"]    Jalan Jakarta No.10
    Input Text    //*[@id="pemilih_rt"]    2
    Input Text    //*[@id="pemilih_rw"]    3
    Select From List By Label    //*[@id="pemilih_kelurahan_id"]   Tunas Harapan
    Input Text    //*[@id="pemilih_tempat_lahir"]    Malang
    Click Element   //*[@id="pemilih_tgl_lahir"]
    Click Element    //*[@id="kt_body"]/div[7]/div[1]/table/thead/tr[2]/th[2]
    Click Element    //*[@id="kt_body"]/div[7]/div[2]/table/thead/tr[2]/th[2]
    Click Element    //*[@id="kt_body"]/div[7]/div[3]/table/thead/tr[2]/th[2]
    Double Click Element    //*[@id="kt_body"]/div[7]/div[4]/table/tbody/tr/td/span[2]
    Click Element    //*[@id="kt_body"]/div[7]/div[2]/table/tbody/tr/td/span[1]
    Click Element    //*[@id="kt_body"]/div[7]/div[1]/table/tbody/tr[3]/td[2]
    Click Element    //*[@id="form_inputpemilih"]/div[1]/div/div[2]/div[3]/div/div[1]/label[2]/span
    Select From List By Label    //*[@id="pemilih_status_kawin"]    P - Pernah Kawin
    Select From List By Label    //*[@id="pemilih_caleg_id"]    Dummy
    Select From List By Label    //*[@id="pemilih_tps_id"]    TPS001 - Tunas Harapan
    Click Element    //*[@id="Statusradio"]/label[2]/span
    Scroll Page Down
    Click Button    //*[@id="btn-simpan"]
    Sleep    5s
    # Button simpan tidak berfungsi ketika semua form sudah berhasil diberi value