*** Settings ***
Library  SeleniumLibrary
Suite Teardown  Close Browser

*** Variables ***
${URL}  http://automationpractice.com/index.php
${browser}  chrome
&{locators}
...  Sing_in=//a[contains(@class,'login')]
...  Email_bar=//input[@id='email_create']
...  Create=//*[@id="SubmitCreate"]
...  genre=//label[contains(@for,'id_gender1')]
&{INFO}
...  Email=antonio.cabralbkn@gmail.com
...  F_name=Thiago
...  L_name=Bassakin
...  Password=alooo
...  endereço=minhacasa
...  cidade=minha cidade
...  postalcode=00000
...  fone=11999999999

*** Keywords ***
Acessar a Página
    Open Browser  ${URL}  ${browser}
Sign-in
    Click Element    ${locators.Sing_in}
Email
    Input Text   ${locators.Email_bar}  ${INFO.Email}
    Click Element    ${locators.Create}
    Wait Until Element Is Visible    //*[@id="account-creation_form"]/div[1]/h3
preencher
    Click Element                    ${locators.genre}
    Input Text                       //*[@id="customer_firstname"]    ${INFO.F_name}
    Wait Until Element Is Visible    (//input[@data-validate='isName'])[1]
    Input Text                       //*[@id="customer_lastname"]     ${INFO.L_name}
    Wait Until Element Is Visible    (//input[@data-validate='isName'])[2]
    Click Element                    //*[@id="email"]
    Wait Until Element Is Visible    (//input[@name='email'])[1]
    Input Password                   //*[@id="passwd"]    ${INFO.Password}
    Wait Until Element Is Visible    (//input[@class='is_required validate form-control'])[4]
    Click Element                    //*[@id="days"]
    Wait Until Element Is Visible    //*[@id="days"]/option[22]
    Click Element                    //*[@id="days"]/option[22]
    Click Element                    //*[@id="months"]
    Wait Until Element Is Visible    //*[@id="months"]/option[11]
    Click Element                    //*[@id="months"]/option[11]
    Click Element                    //*[@id="years"]
    Wait Until Element Is Visible    //*[@id="years"]/option[24]
    Click Element                    //*[@id="years"]/option[24]
    Input Text    //*[@id="firstname"]     ${INFO.F_name}
    Input Text    //*[@id="lastname"]      ${INFO.L_name}
    Input Text    //*[@id="address1"]      ${INFO.endereço}
    Input Text    //*[@id="city"]          ${INFO.cidade}
    Click Element                    //*[@id="id_state"]
    Wait Until Element Is Visible    //*[@id="id_state"]/option[46]
    Click Element                    //*[@id="id_state"]/option[46]
    Input Text    //*[@id="postcode"]      ${INFO.postalcode}
    Input Text    //*[@id="phone_mobile"]  ${INFO.fone}
    Input Text    //input[@id='alias']     ${INFO.endereço}
concluir
    Click Element    //*[@id="submitAccount"]/span
verificar
    Wait Until Element Is Visible    //*[@id="center_column"]/h1
*** Test Cases ***
create account
    Acessar a Página
    Sign-in
    Email
    preencher
    concluir
    verificar
