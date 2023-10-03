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
