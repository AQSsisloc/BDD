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
E grava dados
E selecionar "SolicitarAutorizacao"
E Confirma "Sim"
Quando selecionar "Autorizar"
E Confirma "Sim"
Então grava os dados 
E grava <Status>

Exemplos:
| Status         |
| Não Autorizado |



@Cenario3
@Automatizar
@Autorização
Esquema do Cenario: Autorizar pedido de compra com parcelas cadastradas e com usuário com valor para autorização
E selecionar "Autorização"
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



@Cenario4
@Automatizar
@Autorização
Esquema do Cenario: Autorizar pedido de compra com parcelas cadastradas e com usuário sem valor para autorização
E selecionar "Autorização"
E selecionar "Ok"
E grava dados
E selecionar "SolicitarAutorizacao"
E Confirma "Sim"
Quando selecionar "Autorizar"
E Confirma "Sim"
Então grava os dados 
E grava <Status>

Exemplos:
| Status         |
| Não Autorizado |



@Cenario5
@Automatizar
@Autorização
Esquema do Cenario: Autorizar pedido de compra com parcelas cadastradas e com usuário com valor para autorização
E selecionar "Autorização"
E selecionar "Cancelar"
Então não grava os dados



@Cenario6
@Automatizar
@Autorização
Esquema do Cenario: Autorizar pedido de compra com parcelas cadastradas e com usuário com valor para autorização
E selecionar "Autorização"
E selecionar "Ok"
E grava dados
E selecionar "SolicitarAutorizacao"
E Confirma "Não"
Então não grava os dados



@Cenario7
@Automatizar
@Autorização
Esquema do Cenario: Autorizar pedido de compra com parcelas cadastradas e com usuário com valor para autorização
E selecionar "Autorização"
E selecionar "Ok"
E grava dados
E selecionar "SolicitarAutorizacao"
E Confirma "Sim"
Quando selecionar "Autorizar"
E Confirma "Não"
Então não grava os dados



@Cenario8
@Automatizar
@Autorização
Esquema do Cenario: Autorizar pedido de compra com parcelas cadastradas e com usuário sem valor para autorização
E selecionar "Autorização"
E selecionar "Ok"
E grava dados
E selecionar "SolicitarAutorizacao"
E Confirma "Sim"
Quando selecionar "Não Autorizar"
E Confirma "Motivo"
E selecionar "Ok"
Então grava os dados 
E grava <Status>

Exemplos:
| Status         |
| Não Autorizado |



@Cenario9
@Automatizar
@Autorização
Esquema do Cenario: Autorizar pedido de compra com parcelas cadastradas e com usuário sem valor para autorização
E selecionar "Autorização"
E selecionar "Ok"
E grava dados
E selecionar "SolicitarAutorizacao"
E Confirma "Sim"
Quando selecionar "Não Autorizar"
E Confirma "Motivo"
E selecionar "Cancelar"
Então grava os dados



@Cenario10
@Automatizar
@Autorização
Esquema do Cenario: Estornar autorizar pedido de compra por dentro da "Autorização"
E selecionar "Autorização"
E selecionar "EstornarAutorização"
E Confirma "Sim"
E Confirma "Sim"
Então grava os dados 
E grava <Status>

Exemplos:
| Status            |
| Minhas Pendências |