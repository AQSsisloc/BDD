#language: pt
#GerenciarRotas 
#ServicesWeb


Funcionalidade: Gerenciar rotas das atividades
  Como um usuário do Services Web 
  Eu quero gerenciar rotas para as atividades 
  Para ter controle do fluxo de entrega 


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@GerenciarRotas
Cenario: Exibir mapa 
E selecionar "Rotas"
Quando clicar "Gerenciar Rotas"
Entao exibe o mapa  



@Cenario2
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Exibir detalhes atividade
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
Quando clicar em <Atividade>
Entao exibe os dados 

Exemplos:
| Atividade           |
| Remessa - 100332-01 |



@Cenario3
@Automatizar
@GerenciarRotas 
Cenario: Exibir rotas no mapa 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
E clicar "Rotas Criadas"
E clicar "Previstas"
Quando clicar em "Exibir rotas no mapa"
Entao exibe os dados 



@Cenario4
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Editar pelo mapa 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
E clicar "Previstas"
Quando clicar editar <Rota>
Entao abre rota para alteração 

Exemplos:
| Rota              |
| Rota correção AQS |



@Cenario5
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Editar pelo mapa 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
E clicar "Previstas"
Quando clicar editar <Rota>
Entao abre rota para alteração 

Exemplos:
| Rota              |
| Rota correção AQS |



@Cenario6
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Ocultar uma rota 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
E clicar "Liberadas"
Quando clicar "olho"
Entao  oculta a rota 



@Cenario7
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Novas Rotas 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
Quando clicar "Adicionar" em <Atividade>
Entao cria nova rota 

Exemplos:
| Atividade          |
| Manutenção - 18063 |



@Cenario8
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Novas Rotas 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
Quando clicar "Adicionar" em <Atividade>
Entao cria nova rota 

Exemplos:
| Atividade          |
| Manutenção - 18063 |



@Cenario9
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Editar data prevista atividade 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
E clicar "Editar data prevista" em <Atividade>
Quando alterar os dados 
E clicar "Salvar"
Entao grava os dados

Exemplos:
| Atividade          |
| Manutenção - 18063 |



@Cenario10
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Editar data prevista atividade 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
E clicar "Editar data prevista" em <Atividade>
Quando alterar os dados 
E clicar "Salvar"
Entao grava os dados 

Exemplos:
| Atividade               |
| Manutenção - 18063 |



@Cenario11
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Alterar endereço da atividade 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
E clicar "Atualizar localização" em <Atividade>
Quando alterar os dados 
E clicar "Salvar"
Entao grava os dados  
E apresenta <MensagemEndereco>

Exemplos:
| Atividade          | MensagemEndereco           |
| Manutenção - 18063 | Endereço salvo com sucesso |



@Cenario12
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Juntar atividades a uma rota existente 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
Quando clicar "Juntar a uma rota existente" em <Atividade>
Entao grava nova rota 

Exemplos:
| Atividade          |
| Manutenção - 18063 |



@Cenario13
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Alterar endereços inválidos 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
E clicar "Total atividades sem localização"
E clicar "Editar"
Quando alterar os dados 
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemEndereco> 

Exemplos:
| MensagemEndereco           |
| Endereço salvo com sucesso |



@Cenario14
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Centralizar empresa  
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
Quando clicar "Centralizar Empresa"
Entao cetraliza <Empresa> no mapa

Exemplos:
| Empresa |
| Matriz  |



@Cenario15
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Alterar endereços inválidos 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
E clicar "Total atividades sem localização"
E clicar "Editar"
Quando alterar os dados 
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemEndereco> 

Exemplos:
| MensagemEndereco           |
| Endereço salvo com sucesso |



@Cenario16
@Automatizar
@GerenciarRotas
Cenario: Filtrar Rotas 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
Quando clicar "Filtro"
E inserir dados do filtro 
E clicar  "Filtrar"
Entao apresenta a rota do filtro pesquisado  



@Cenario17
@Automatizar
@GerenciarRotas
Cenario: Pesquisar endereço 
E selecionar "Rotas"
Quando clicar "Buscar Endereço"
E inserir <Endereco>
E clicar  "Ok"
Entao apresenta localização 

Exemplos:
| Endereco                                                      |
| Praça da Liberdade 600 - Savassi, Belo Horizonte/MG, 30140010 |



@Cenario18
@Automatizar
@GerenciarRotas 
Cenario: Atualizar rotas 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
Quando clicar "Atualizar"
Entao atualiza as rotas 
 


@Cenario19
@Automatizar
@GerenciarRotas 
Cenario: Adicionar nova rota 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
Quando clicar "Nova Rota"
Entao cria nova Rota  



@Cenario20
@Automatizar
@GerenciarRotas 
Cenario: Gerar rotas automaticamente 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
Quando clicar "Gerar rotas automaticamente"
E confirmar "Ok"
Entao cria rota para atividades abertas



@Cenario21
@Automatizar
@GerenciarRotas 
Cenario: Adicionar atividade
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
Quando clicar "Adicionar Atividades"
E inserir os dados 
Entao cria ponto de atividade



@Cenario22
@Automatizar
@GerenciarRotas 
Esquema do Cenario: Alterar  endereços sem localização 
E selecionar "Rotas"
E clicar "Gerenciar Rotas"
E clicar "Endereços sem localização"
E clicar "Editar"
Quando alterar os dados 
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemEndereco> 

Exemplos:
| MensagemEndereco           |
| Endereço salvo com sucesso |
