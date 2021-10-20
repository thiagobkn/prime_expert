*** Settings ***
Resource  Exercicio1.robot
Resource  Exercicio2.robot
Resource  Exercicio3.robot
Resource  Exercicio4.robot
Resource  Exercicio5.robot
Resource  Exercicio6.robot

*** Test Cases ***
area 51
    Log To Console  \nNome: ${pessoa1.nome}
    Log To Console  Sobrenome: ${pessoa1.sobrenome}
    Log To Console  Idade: ${pessoa1.idade}
    Log To Console  Gênero: ${pessoa1.genero}
    Log To Console  Data de nascimento: ${pessoa1.data_de_nascimento}
    Log To Console  Comida favorita: ${pessoa1.comida_favorita}
compras
    Log To Console    \n${Frutas[0]}
    Log To Console    ${Frutas[1]}
    Log To Console    ${Frutas[2]}
    Log To Console    ${Frutas[3]}
    Log To Console    ${Frutas[4]}
email
    ${email}  criação do email   ${pessoa3.nome}   ${pessoa3.sobrenome}   ${pessoa3.idade}   ${pessoa3.base_email}
    Log To Console    \n${email}
resultado
    contar de 0 a 9
paises
    paises
roleta de numeros
    acertando o numero