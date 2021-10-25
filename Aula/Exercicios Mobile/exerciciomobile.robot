*** Settings ***
Library  AppiumLibrary
Suite Setup  Open Application    
    ...  remote_url=http://localhost:4723/wd/hub
    ...  platformName=Android
    ...  deviceName=emulator-5554
    ...  appPackage=com.google.android.youtube
    ...  appActivity=com.google.android.apps.youtube.app.WatchWhileActivity
    ...  autoGrantPermissions=true

Suite Teardown  Close All Applications
*** Variables ***
&{INFO}
...  email=antonio.cabralbkn@gmail.com
...  senha=bkn.123456

*** Keywords ***

###################################################################################################################################################
#                                                  Mobile 1                                                                                       #
###################################################################################################################################################
pesquisar
    Set Appium Timeout    15
    sleep                 5
    Wait Until Element Is Visible    accessibility_id=Search
    Click Element                    accessibility_id=Search
    Wait Until Element Is Visible    id=com.google.android.youtube:id/search_edit_text
    Input Text                       id=com.google.android.youtube:id/search_edit_text    adrenaline
    Press Keycode                    66
selecionar o canal
    Wait Until Element Is Visible    id=com.google.android.youtube:id/channel_name
    Click Element                    id=com.google.android.youtube:id/channel_name
ir em playlist
    Wait Until Element Is Visible    accessibility_id=Playlists
    Click Element                    accessibility_id=Playlists
selecionar a playlist
    Wait Until Element Is Visible    xpath=//android.view.ViewGroup[@content-desc="Intel Arc - by Adrenaline - 2 videos"]/android.widget.ImageView[1]
    Click Element                    xpath=//android.view.ViewGroup[@content-desc="Intel Arc - by Adrenaline - 2 videos"]/android.widget.ImageView[1]

###################################################################################################################################################
#                                                  Mobile 2                                                                                       #
###################################################################################################################################################

voltar ao iniciar
    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Home"]/android.widget.ImageView
    Click Element    	             xpath=//android.widget.Button[@content-desc="Home"]/android.widget.ImageView

Logar uma conta
    Wait Until Element Is Visible    accessibility_id=Account
    Click Element                    accessibility_id=Account
    Wait Until Element Is Visible    id=com.google.android.youtube:id/button
    Click Element                    id=com.google.android.youtube:id/button
    Wait Until Element Is Visible    accessibility_id=Add account
    Click Element                    accessibility_id=Add account
    Wait Until Element Is Visible    xpath=//android.widget.EditText[@resource-id="identifierId"]
    Input Text                       xpath=//android.widget.EditText[@resource-id="identifierId"]                     ${INFO.email}
    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="identifierNext"]//android.widget.Button
    Click Element                    xpath=//android.view.View[@resource-id="identifierNext"]//android.widget.Button
    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="password"]//android.widget.EditText      
    Input Text                       xpath=//android.view.View[@resource-id="password"]//android.widget.EditText      ${INFO.senha}
    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="passwordNext"]//android.widget.Button
    Click Element                    xpath=//android.view.View[@resource-id="passwordNext"]//android.widget.Button
    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="signinconsentNext"]//android.widget.Button
    Click Element                    xpath=//android.view.View[@resource-id="signinconsentNext"]//android.widget.Button
    Wait Until Element Is Visible    id=com.google.android.gms:id/sud_items_switch  
    Click Element                    id=com.google.android.gms:id/sud_items_switch
    Swipe    541    1491    541    250
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text="ACCEPT"]
    Click Element                    xpath=//android.widget.Button[@text="ACCEPT"]
scrolar a tela
    Wait Until Element Is Visible    xpath=//android.support.v7.widget.RecyclerView[@content-desc="filters"]/android.widget.LinearLayout[1]/android.widget.TextView
    Click Element                    xpath=//android.support.v7.widget.RecyclerView[@content-desc="filters"]/android.widget.LinearLayout[1]/android.widget.TextView
    sleep  5
    FOR    ${counter}    IN RANGE    0    5
        Swipe    548    1500    548    250
        sleep    1
        
    END
    Swipe    548    1500    548    548
    sleep    1
clicar no video
    Click Element At Coordinates    534    880
    sleep                           5

###################################################################################################################################################
#                                                  Mobile 3                                                                                       #
###################################################################################################################################################

voltar
    Press Keycode    4
    Sleep            1
    Press Keycode    4
    sleep            5
scrolar
     FOR    ${counter}    IN RANGE    0    5
        Swipe    548    1500    548    250
        sleep    1
        
    END
    Swipe    548    1500    548    548
    sleep    1
clicar no video 2
    Click Element At Coordinates    534    880

*** Tasks ***
mobile 1
    pesquisar
    selecionar o canal
    ir em playlist
    selecionar a playlist
mobile 2
    voltar ao iniciar
    Logar uma conta
    scrolar a tela
    clicar no video
mobile 3
    voltar
    scrolar
    clicar no video 2
    