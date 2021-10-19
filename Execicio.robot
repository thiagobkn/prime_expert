*** Variables ***
&{Alienigena}  nome=sei  sobrenome=la  idade=007  genero=elicoptero de combate  data_de_nascimento=01/01/01  comida_favorita=sua mae

*** Test Cases ***
area 51
    Log To Console  ${alienigena.nome}
    Log To Console  ${alienigena.sobrenome}
    Log To Console  ${alienigena.idade}
    Log To Console  ${alienigena.genero}
    Log To Console  ${alienigena.data_de_nascimento}
    Log To Console  ${alienigena.comida_favorita}