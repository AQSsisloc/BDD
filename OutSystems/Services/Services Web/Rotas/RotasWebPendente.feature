#language: pt
#RotasWeb
#ServicesWeb


Funcionalidade: Gerenciar rotas das atividades
  Como um usuário do Services Web 
  Eu quero gerenciar rotas para as atividades 
  Para ter controle do fluxo de entrega 


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@RotasWebPrevistas
Esquema do Cenario: Exibir detalhes  
E selecionar "Rotas"
E selecionar "Previstas"
Quando clicar em "Detalhes" de uma <Rota>
Entao exibe os dados 

Exemplos:
| Rota         |
| 363 - Rota 1 |



@Cenario2
@Automatizar
@RotasWebPrevistas
Esquema do Cenario: Liberar Rota
E selecionar "Rotas"
E selecionar "Previstas"
Quando clicar em "Liberar"  uma <Rota>
Entao grava os dados 
E exibe <MensagemLiberacao> 

Exemplos:
| Rota         | MensagemLiberacao                      |
| 363 - Rota 1 | Rota 363 - Rota 1 Liberada com sucesso |



@Cenario3
@Automatizar
@RotasWebPrevistas
Esquema do Cenario: Excluir uma Rota
E selecionar "Rotas"
E selecionar "Previstas"
Quando clicar em "Excluir"  uma <Rota>
E confirmar "Sim"
Entao grava os dados 
E exibe <MensagemExclusao> 

Exemplos:
| Rota         | MensagemExclusao          |
| 363 - Rota 1 | Rota removida com sucesso |








