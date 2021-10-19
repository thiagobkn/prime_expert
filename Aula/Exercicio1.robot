*** Variables ***
&{pessoa}  nome=Thiago  sobrenome=antonio  idade=21  genero=Masculino  data_de_nascimento=21/10/1999  comida_favorita=misto quente

*** Test Cases ***
area 51
    Log To Console  \nNome: ${pessoa.nome}
    Log To Console  Sobrenome: ${pessoa.sobrenome}
    Log To Console  Idade: ${pessoa.idade}
    Log To Console  Gênero: ${pessoa.genero}
    Log To Console  Data de nascimento: ${pessoa.data_de_nascimento}
    Log To Console  Comida favorita: ${pessoa.comida_favorita}