#language: pt
#Mapa de cotação
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
E informar "Empresa"
E salvar
Então grava os dados