#language: pt
#Encerrar
#FDelphi


Funcionalidade: Encerrar o pedido de compra
  Como encerrar o estoque no pedido de compra
  Eu quero encerrar o estoque no pedido de compra
  Para encerrar o pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@Encerrar
Cenario: Encerrar pedido de compra
E selecionar "Encerrar"
E clicar "Cancelar"
E não grava dados
E grava <Status>

Exemplos:
| Status              |
| Recebdio na empresa |



@Cenario2
@Automatizar
@Encerrar
Cenario: Encerrar pedido de compra
E selecionar "Encerrar"
E preencher os dado
Quando clicar "Ok"
E grava dados
E altera Contas a pagar "Aberto (A Vencer)"
E preenche o campo "Encerramento Data"
E bloqueia edição de campos
E grava <Status>

Exemplos:
| Status    |
| Encerrado |



@Cenario3
@Automatizar
@EstornarEncerramento
Cenario: Estornar Encerramento do pedido de compra
E selecionar "Encerrar"
E clicar "Não"
E não grava dados
E grava <Status>

Exemplos:
| Status    |
| Encerrado |



@Cenario4
@Automatizar
@EstornarEncerramento
Cenario: Estornar o encerramento do pedido de compra
E selecionar "Estornar encerramento"
Quando clicar "Sim"
E grava dados
E altera Contas a pagar "Provisório"
E remove o campo "Encerramento Data"
E permite edição de campos
E grava <Status>

Exemplos:
| Status              |
| Recebdio na empresa |