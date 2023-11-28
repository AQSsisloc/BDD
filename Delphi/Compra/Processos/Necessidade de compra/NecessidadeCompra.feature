#language: pt
#Necessidade de compra
#Delphi


Funcionalidade: Verificar produtos que necessita de compra para reposição de estoque.
  Como verificar a necessidade de compras de produtos com estoque abaixo do estoque mínimo
  Eu quero verificar produtos que estão com o estoque abaixo do estoque mínimo permitido
  Para exibir a listagem de produtos cujo estoque está abaixo do estoque mínimo


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@NecessidadedeCompra
Cenario: Listar produtos cujo estoque está abaixo do mínimo
E selecionar tipo <Relatorio>
E alterar "Opções"
E alterar "Filtros"
Quando clicar em "Relatório"
E gera o <Relatorio>



@Cenario2
@Automatizar
@NecessidadedeCompra
Cenario: Listar produtos cujo estoque está abaixo do mínimo
E selecionar tipo <EfetuarSolicitacao>
E alterar "Opções"
E alterar "Filtros"
Quando clicar em "Relatório"
E gera o <SolicitacaodeCompraAutomática>
E preencher dados
E inserir <Quanto>
Quando clicar em "Ok"
E apresenta a <MensagemDeSucesso>
E cliar em "Sim"
Então grava dados
E gera <SolicitacaodeCompra>

Exemplos:
| MensagemDeSucesso               |
| Confirma solicitação de compra? |



@Cenario3
@Automatizar
@NecessidadedeCompra
Cenario: Listar produtos cujo estoque está abaixo do mínimo
E selecionar tipo <EfetuarSolicitacao>
E alterar "Opções"
E alterar "Filtros"
Quando clicar em "Relatório"
E gera o <SolicitacaodeCompraAutomática>
E preencher dados
E inserir <Quanto>
Quando clicar em "Ok"
E apresenta a <MensagemDeSucesso>
E cliar em "Não"
Então não grava dados
E não gera <SolicitacaodeCompra>

Exemplos:
| MensagemDeSucesso               |
| Confirma solicitação de compra? |