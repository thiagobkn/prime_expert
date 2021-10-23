*** Settings ***
Library  SeleniumLibrary
Suite Teardown  Close Browser

*** Variables ***
${URL}  http://automationpractice.com/index.php
${browser}  chrome
&{locators}
...  category_women=//a[@title='Women']
...  category_summer=(//a[contains(@title,'Summer Dresses')])[1]

*** Keywords ***
Acessar a Página
    Open Browser  ${URL}  ${browser}
categoria
    Mouse Over    ${locators.category_women}
    Wait Until Element Is Visible    ${locators.category_summer}
sub categoria
    Click Element    ${locators.category_summer}
verificar
    Wait Until Element Is Visible    //span[contains(@class,'cat-name')]
    Element Should Be Visible    //span[contains(@class,'cat-name')]
*** Test Cases ***
listar produtos
    Acessar a Página
    categoria
    sub categoria
    verificar