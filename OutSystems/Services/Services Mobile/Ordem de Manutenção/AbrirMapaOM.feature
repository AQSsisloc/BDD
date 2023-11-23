#language: pt
#AbrirMapaOM
#ServicesMobile


Funcionalidade: Visualizar mapa da posição do equipamento de uma Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero visualizar a posição do equipamento da ordem de manutenção
  Para visualização no mapa de acordo com a última localização salva pelo técnico


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@AbrirMapa
Esquema do Cenario: Visualizar mapa da posição do equipamento da Ordem de Manutenção após registrar posição
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir "Registrar Posição do Equipamento"
E clicar em "voltar"
Quando selecionar "Mais"
E clicar em "Abrir Mapa"
Entao abri o mapa da posição
E visualiza a localização do equipamento

Exemplos:
| Empresa   | Almoxarifado         |
| MATRIZ BH | 1.10 - ESTOQUE VENDA |



@Cenario2
@Manual
@AbrirMapa
Esquema do Cenario: Visualizar mapa da posição do equipamento da Ordem de Manutenção não registrado posição
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
Quando selecionar "Mais"
E clicar em "Abrir Mapa"
Entao abri o mapa da posição
E não visualiza a localização do equipamento

Exemplos:
| Empresa | Almoxarifado         |
| VITÓRIA | 1.10 - ESTOQUE GERAL |


