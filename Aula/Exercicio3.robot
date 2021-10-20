*** Variables ***
&{pessoa}  nome=thiago  sobrenome=bassakin  idade=21  base_email=robot

*** Keywords ***
criação do email
    [Arguments]  ${nome}  ${sobrenome}  ${idade}  ${base_email}
    [Return]     ${nome}_${sobrenome}_${idade}@${base_email}.com
    

*** Test Cases ***
email
    ${email}  criação do email   ${pessoa.nome}   ${pessoa.sobrenome}   ${pessoa.idade}   ${pessoa.base_email}
    Log To Console    \n${email}