#language: pt
#Anotacoes
#Delphi


Funcionalidade: Anotações e anexar XML importando referente ao pedido de compra
  Como anotar ou anexar XML referente ao pedido de compra
  Eu quero anotar ou anexar XML referente ao pedido de compra
  Para anotar ou anexar XML referente ao pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@Anotacoes
Cenario: Anotar informações do pedido de compra
E selecionar "Anotações"
E clicar em "+Adicionar"
Quando clicar "Cancelar"
E não grava dados



@Cenario2
@Automatizar
@Anotacoes
Cenario: Anotar informações do pedido de compra
E selecionar "Anotações"
E clicar em "+Adicionar"
E preencher os campos disponíveis
Quando clicar "Salvar"
E grava dados



@Cenario3
@Automatizar
@Anotacoes
Cenario: Anotar informações do pedido de compra
E selecionar "Anotações"
E clicar em "+Excluir"
E apaga dados