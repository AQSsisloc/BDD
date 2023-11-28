#language: pt
#AprovarFornecedor
#Delphi


Funcionalidade: Aprovar Fornecedor do pedido de compra
  Como aprovar o fornecedor do pedido de compra
  Eu quero aprovar o fornecedor do pedido de compra
  Para aprovar o fornecedor do pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@AprovarFornecedor
Cenario: Aprovar Fornecedor no pedido de compra
E selecionar "Autorizar Forneciemnto"
Quando clicar "Não"
E não grava dados
E grava <Status>

Exemplos:
| Status                  |
| Forneciemnto Autorizado |



@Cenario2
@Automatizar
@AprovarFornecedor
Cenario: Aprovar Fornecedor no pedido de compra
E selecionar "Autorizar Forneciemnto"
Quando clicar "Sim"
E grava dados
E grava campo "Aprovação fornecedor data/hora"
E grava <Status>

Exemplos:
| Status                   |
| Aprovado pelo fornecedor |



@Cenario3
@Automatizar
@AprovarFornecedor
Cenario: Estornar a Aprovação Fornecedor no pedido de compra
E selecionar "Estornar Aprovação"
Quando clicar "Não"
E não grava dados
E grava <Status>

Exemplos:
| Status                   |
| Aprovado pelo fornecedor |



@Cenario4
@Automatizar
@AprovarFornecedor
Cenario: Estornar a Aprovação Fornecedor no pedido de compra
E selecionar "Estornar Aprovação"
Quando clicar "Sim"
E grava dados
E limpa campo "Aprovação fornecedor data/hora"
E grava <Status>

Exemplos:
| Status                  |
| Forneciemnto Autorizado |