#language: pt
#Gerar Pedido de Compra
#Delphi


Funcionalidade: Gerar Pedido de Compra.
  Como gerar o pedido de compras a partir da cotação vencedora
  Eu quero gerar pedido de compras no mapa de cotação
  Para gerar pedido de compras com a cotação vencedora


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@GerarPedidodeCompra
Cenario: Gerar pedido de compra sem cotação vencedora
E clicar em <GerarPedidodeCompra>
E apresenta a <MensagemDeSucesso>


Exemplos:
| MensagemDeSucesso                              |
| Não existe "Fornecedor" com cotação vencedora. |



@Cenario2
@Automatizar
@GerarPedidodeCompra
Cenario: Gerar pedido de compra com cotação vencedora
E clicar em <GerarPedidodeCompra>
E informar <Fornecedor>
E informar <Alcada>
Entao gera pedido de compras