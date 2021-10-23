*** Settings ***
Library  SeleniumLibrary
Suite Teardown  Close Browser

*** Variables ***
${URL}  http://automationpractice.com/index.php
${browser}  chrome
&{locators}
...  search_bar=//input[@id='search_query_top']
...  search_button=//button[@name='submit_search']

*** Keywords ***
Abrir
    Open Browser  ${URL}  ${browser}

Pesquisar e clicar
    Input Text    ${locators.search_bar}    ItemNãoExistente
    Click Element    ${locators.search_button}

Verificar
    Wait Until Element Is Visible  //p[contains(@class,'alert alert-warning')]
    Element Should Be Visible  //p[contains(@class,'alert alert-warning')]

*** Test Cases ***
ItemNãoExistente
    Abrir
    Pesquisar e clicar
    Verificar
