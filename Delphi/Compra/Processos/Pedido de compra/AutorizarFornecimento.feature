#language: pt
#Autorizar Fornecimento
#FDelphi


Funcionalidade: Autorizar fornecimento do pedido de compra
  Como autorizar fornecimento do pedido de compra
  Eu quero autorizar fornecimento do pedido de compra
  Para autorizar fornecimento do pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@AutorizarFornecimento
Esquema do Cenario: Autorizar fornecimento no pedido de compra
E selecionar "Autorizar Forneciemnto"
E clicar "Não"
E não grava dados



@Cenario2
@Automatizar
@AutorizarFornecimento
Esquema do Cenario: Autorizar fornecimento no pedido de compra
E selecionar "Autorizar Forneciemnto"
E clicar "Sim"
Quando clicar "Fechar"
E grava dados
E sava data/hora no campo "Fornecimento"
E grava <Status>

Exemplos:
| Status                  |
| Forneciemnto Autorizado |



@Cenario3
@Automatizar
@AutorizarFornecimento
Esquema do Cenario: Autorizar fornecimento no pedido de compra
E selecionar "Autorizar Forneciemnto"
E clicar "Sim"
E selecionar "Modelo de Documento"
Quando clicar "Relatório"
E grava dados
E sava data/hora no campo "Fornecimento"
E exibe o "Relatório PDF"
E grava <Status>

Exemplos:
| Status                  |
| Forneciemnto Autorizado |



@Cenario4
@Automatizar
@EstoranrFornecimento
Esquema do Cenario: Estoanr o autorizar fornecimento no pedido de compra
E selecionar "Estonar Forneciemnto"
E clicar "Não"
E não remove data/hora do campo "Fornecimento"
E grava <Status>

Exemplos:
| Status                  |
| Forneciemnto Autorizado |



@Cenario5
@Automatizar
@EstoranrFornecimento
Esquema do Cenario: Estoanr o autorizar fornecimento no pedido de compra
E selecionar "Estonar Forneciemnto"
E clicar "Sim"
E remove data/hora do campo "Fornecimento"
E grava <Status>

Exemplos:
| Status     |
| Autorizado |