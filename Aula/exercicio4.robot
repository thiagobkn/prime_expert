*** Settings ***
Library  Collections

*** Keywords ***
contar de 0 a 9
    Log To Console    iniciando o loop
    FOR  ${count}  IN RANGE  0  9
    Log To Console  ${count}
    END
    Log To Console    finalizando o loop