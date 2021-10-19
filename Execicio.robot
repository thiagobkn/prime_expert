*** Variables ***
&{Alienigena}  nome=sei  sobrenome=la  idade=007  genero=elicoptero de combate  data_de_nascimento=01/01/01  comida_favorita=sua mae

*** Test Cases ***
area 51
    Log To Console  \nNome: ${alienigena.nome}
    Log To Console  Sobrenome: ${alienigena.sobrenome}
    Log To Console  Idade: ${alienigena.idade}
    Log To Console  Gênero: ${alienigena.genero}
    Log To Console  Data de nascimento: ${alienigena.data_de_nascimento}
    Log To Console  Comida favorita: ${alienigena.comida_favorita}