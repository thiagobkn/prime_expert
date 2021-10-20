*** Variables ***
&{pessoa3}  nome=thiago  sobrenome=bassakin  idade=21  base_email=robot

*** Keywords ***
criação do email
    [Arguments]  ${nome}  ${sobrenome}  ${idade}  ${base_email}
    [Return]     ${nome}_${sobrenome}_${idade}@${base_email}.com