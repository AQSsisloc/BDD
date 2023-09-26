#language: pt
#Autorização
#FDelphi


Funcionalidade: Autorizar a compra no pedido de compra
  Como autorizar a compra do pedido de compra
  Eu quero autorizar o pedido de compra
  Para autorizar a compra de produto ou serviço


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@Autorização
Esquema do Cenario: Autorizar pedido de compra sem parcelas cadastradas e com usuário com valor para autorização
E selecionar "Autorização"
E selecionar "Parcelas não cadastradas. Marque para poder continuar"
E selecionar "Ok"
E grava dados
E selecionar "SolicitarAutorizacao"
E Confirma "Sim"
Quando selecionar "Autorizar"
E Confirma "Sim"
Então grava os dados 
E grava <Status>

Exemplos:
| Status     |
| Autorizado |


@Cenario2
@Automatizar
@Autorização
Esquema do Cenario: Autorizar pedido de compra sem parcelas cadastradas e com usuário sem valor para autorização
E selecionar "Autorização"
E selecionar "Parcelas não cadastradas. Marque para poder continuar"
E selecionar "Ok"
Então grava dados
E selecionar <SolicitarAutorizacao>
E Confirma solicitação de autorização <Sim>
E selecionar <Autorizar>
E Confirma autorização? <Sim>
E grava a <Autorizacao>
Então fica pedendete de autorização

@Cenario3
@Automatizar
@Autorização
Esquema do Cenario: Autorizar pedido de compra com parcelas cadastradas e com usuário com valor para autorização
E selecionar "Autorização"
E selecionar "Ok"
Então grava dados
E selecionar <SolicitarAutorizacao>
E Confirma solicitação de autorização <Sim>
E selecionar <Autorizar>
E Confirma autorização? <Sim>
Então grava a <Autorizacao>