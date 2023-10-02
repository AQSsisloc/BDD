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

