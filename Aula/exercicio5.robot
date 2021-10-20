*** Settings ***
Library  Collections

*** Variables ***
@{paises}  Brasil  USA  Canada  Alemanha  Russia

*** Keywords ***
paises
    FOR  ${paises}  IN  @{paises}
    Log To Console  \n${paises}
    END