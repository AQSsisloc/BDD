#language: pt
#PedidoRecebido
#Delphi


Funcionalidade: Pedido recebido do pedido de compra
  Como receber o pedido no pedido de compra
  Eu quero receber o pedido no pedido de compra
  Para expedir o fornecedor do pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@PedidoRecebido
Cenario: Pedido recebido no pedido de compra
E selecionar "Pedido Recebido"
Quando clicar "Não"
E não grava dados
E grava <Status>

Exemplos:
| Status                   |
| Expedido pelo fornecedor |



@Cenario2
@Automatizar
@PedidoRecebido
Cenario: Pedido recebido no pedido de compra
E selecionar "Pedido Recebido"
Quando clicar "Sim"
E grava dados
E grava campo "Recebimento data/hora"
E grava <Status>

Exemplos:
| Status              |
| Recebido na empresa |



@Cenario3
@Automatizar
@EstornarRecebimento
Cenario: Estornar recebimento no pedido de compra
E selecionar "Estornar Recebimento"
Quando clicar "Não"
E não grava dados
E grava <Status>

Exemplos:
| Status                 |
| Recebimetno na empresa |



@Cenario4
@Automatizar
@EstornarRecebimento
Cenario: Estornar recebimento no pedido de compra
E selecionar "Estornar Recebimento"
Quando clicar "Sim"
E grava dados
E limpa campo "Recebimento data/hora"
E grava <Status>

Exemplos:
| Status                 |
| Recebimetno na empresa |