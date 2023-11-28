#language: pt
#EntradaNF/Estoque
#Delphi


Funcionalidade: Entrada N.F/Estoque no pedido de compra
  Como efetuar a entrada da NF no estoque no pedido de compra
  Eu quero efetuar a entrada da NF no estoque no pedido de compra
  Para efetuar a entrada da NF no estoque no pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@EntradaNF/Estoque
Esquema do Cenario: Entrada N.F/Estoque no pedido de compra
E selecionar "Entrada N.F/Estoque"
E clicar "Cancelar"
E não grava dados
E grava <Status>

Exemplos:
| Status              |
| Recebdio na empresa |



@Cenario2
@Automatizar
@EntradaNF/Estoque
Esquema do Cenario: Entrada N.F/Estoque no pedido de compra
E selecionar "Entrada N.F/Estoque"
E preencher os campos disponíveis
Quando clicar em "Concluir"
Entao grava os dados
E preenche o campo "Estoque Data"
E grava <Status>

Exemplos:
| Status              |
| Entregue no estoque |



@Cenario3
@Automatizar
@EstonarEntrada
Esquema do Cenario: Estonar Entrada N.F/Estoque no pedido de compra
E selecionar "Estornar Entrada"
Quando clicar em "Não"
Entao não grava os dados
E grava <Status>

Exemplos:
| Status              |
| Entregue no estoque |



@Cenario4
@Automatizar
@EstonarEntrada
Esquema do Cenario: Estonar Entrada N.F/Estoque no pedido de compra
E selecionar "Estornar Entrada"
Quando clicar em "Sim"
Entao grava os dados
E remove o campo "Estoque Data"
E grava <Status>

Exemplos:
| Status              |
| Recebdio na empresa |