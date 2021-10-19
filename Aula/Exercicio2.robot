*** Variables ***
@{Frutas}  Morango  Tomate  Banana  Uva  Laranja

*** Test Cases ***
compras
    Log To Console    \n${Frutas[0]}
    Log To Console    ${Frutas[1]}
    Log To Console    ${Frutas[2]}
    Log To Console    ${Frutas[3]}
    Log To Console    ${Frutas[4]}