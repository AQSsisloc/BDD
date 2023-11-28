#language: pt
#ExpedicaoFornecedor
#Delphi


Funcionalidade: Expedição Fornecedor do pedido de compra
  Como expedir o fornecedor do pedido de compra
  Eu quero expedir o fornecedor do pedido de compra
  Para expedir o fornecedor do pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@ExpedicaoFornecedor
Cenario: Expedição Fornecedor no pedido de compra
E selecionar "Expedição Fornecedor"
Quando clicar "Não"
E não grava dados
E grava <Status>

Exemplos:
| Status                   |
| Aprovado pelo fornecedor |



@Cenario2
@Automatizar
@ExpedicaoFornecedor
Esquema do Cenario: Expedição Fornecedor no pedido de compra
E selecionar "Expedição Fornecedor"
Quando clicar "Sim"
E grava dados
E grava campo "Expedição data/hora"
E grava <Status>

Exemplos:
| Status                   |
| Expedido pelo fornecedor |



@Cenario3
@Automatizar
@ExpedicaoFornecedor
Esquema do Cenario: Estornar Expedição no pedido de compra
E selecionar "Estornar Expedição"
Quando clicar "Não"
E não grava dados
E grava <Status>

Exemplos:
| Status                   |
| Expedido pelo fornecedor |



@Cenario4
@Automatizar
@ExpedicaoFornecedor
Esquema do Cenario: Estornar Expedição no pedido de compra
E selecionar "Estornar Expedição"
Quando clicar "Sim"
E grava dados
E limpa campo "Expedição data/hora"
E grava <Status>

Exemplos:
| Status                   |
| Aprovado pelo fornecedor |