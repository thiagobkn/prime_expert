*** Settings ***
Library  Collections

*** Keywords ***
acertando o numero
    Log to console  \n
    FOR  ${count}  IN RANGE  0  10
        IF  '${count}'=='5'
            Log To Console    acertei o numero: 5
        ELSE IF  '${count}'=='8'
            Log To Console    acertei o numero: 8
        ELSE
            Log To Console    errei... mas tenho o numero: ${count}
        END
    END

*** Test Cases ***
roleta de numeros
    acertando o numero