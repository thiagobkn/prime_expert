*** Settings ***
Library  SeleniumLibrary
Suite Teardown  Close Browser

*** Variables ***
${URL}  http://automationpractice.com/index.php
${Browser}  chrome
&{Locators}  
...  search_bar=//input[@id='search_query_top']
...  search_button=//button[@name='submit_search']


*** Keywords ***
Acessar a Página
    Open Browser  ${URL}  ${Browser}

Digitar o que Pesquisar
    Input Text    ${Locators.search_bar}  Blouse

Pesquisar
    Click Element    ${Locators.search_button}

Verificar
    Wait Until Element Is Visible    //img[@title='Blouse']

*** Test Cases ***
Blouse
    Acessar a Página
    Digitar o que Pesquisar
    Pesquisar
    Verificar