#language: pt
#Estornar Geração do Pedido
#Delphi


Funcionalidade: Estornar Geração do Pedido.
  Como estonar o pedido de compras gerado partir do mapa de cotação
  Eu quero estonar o pedido de compras gerado no mapa de cotação
  Para estornar o pedido de compras gerado no mapa de cotação


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