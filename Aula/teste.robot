*** Settings ***
Suite Setup  Log To Console    Iniciando Testes
Test Setup  Log To Console    Testando ${TEST_NAME}
Resource  Exercicio1.robot
Resource  Exercicio2.robot
Resource  Exercicio3.robot
Resource  Exercicio4.robot
Resource  Exercicio5.robot
Resource  Exercicio6.robot
Test Teardown  Log To Console    Finalizando ${TEST_NAME}
Suite Teardown  Log To Console    Finalizando Testes

*** Test Cases ***
Registro
    [Tags]  Registro
    Log To Console  \nNome: ${pessoa1.nome}
    Log To Console  Sobrenome: ${pessoa1.sobrenome}
    Log To Console  Idade: ${pessoa1.idade}
    Log To Console  Gênero: ${pessoa1.genero}
    Log To Console  Data de nascimento: ${pessoa1.data_de_nascimento}
    Log To Console  Comida favorita: ${pessoa1.comida_favorita}
Compras
    [Tags]  Compras
    Log To Console    \n${Frutas[0]}
    Log To Console    ${Frutas[1]}
    Log To Console    ${Frutas[2]}
    Log To Console    ${Frutas[3]}
    Log To Console    ${Frutas[4]}
E-mail
    [Tags]  E-mail
    ${email}  criação do email   ${pessoa3.nome}   ${pessoa3.sobrenome}   ${pessoa3.idade}   ${pessoa3.base_email}
    Log To Console    \n${email}
Resultado
    [Tags]  Resultado
    contar de 0 a 9
Paises
    [Tags]  Paises
    paises
Roleta de numeros
    [Tags]  Roleta Russa
    acertando o numero