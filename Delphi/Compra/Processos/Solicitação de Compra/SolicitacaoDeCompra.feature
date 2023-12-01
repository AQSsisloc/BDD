#language: pt
#Liberar compra
#Delphi


Funcionalidade: Solicitar item para o pedido de compra.
  Como liberar itens da solicitação de compras para o pedido de compras
  Eu quero liberar item da solicitação de compras sem a necessidade do mapa de cotação
  Para liberar o item para o pedido de compras sem a necessidade do mapa de cotação


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@SolicitacaodeCompras
@IncluirItemManual
Cenario: Solicitar itens para compra
E clicar em "+Adicionar"
E informar "Descricação"
E inserir <Departamento>
E salvar
E clicar em "+Adicionar registro"
E inserir <Destino>
E selecionar "Produto"
E selecionar "Quantidade"
E selecionar "Prioridade"
E salvar dados



@Cenario2
@Automatizar
@SolicitacaodeCompras
@IncluirItemAutomatica
Cenario: Solicitar itens para compra
E clicar em "Pesquisar"
E validar <Destino>
E validar "Produto"
E validar "Quantidade"
E validar "Prioridade"



@Cenario3
@Automatizar
@ExcluirSolicitacaoCompras
@IncluirItemAutomatica
Cenario: Excluir itens para compra
E clicar em "Pesquisar"
E selecionar "Item"
E clicar "Excluir"
Então retorna item para a necesidae de compras