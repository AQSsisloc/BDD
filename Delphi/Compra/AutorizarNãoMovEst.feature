#language: pt
#Autorizar Não Movimentação Estoque
#FDelphi


Funcionalidade: Autorizar não movimentação de estoque no pedido de compra
  Como autorizar não movimentação de estoque no pedido de compra
  Eu quero autorizar não movimentação de estoque no pedido de compra
  Para autorizar não movimentação de estoque no pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@AutorizarNaoMovEst
Esquema do Cenario: Autorizar não fornecimento de estoque no pedido de compra
E selecionar "Autorizar Forneciemnto"
E clicar "Cancelar"
E não grava dados



@Cenario2
@Automatizar
@AutorizarNaoMovEst
Esquema do Cenario: Autorizar não fornecimento de estoque no pedido de compra
E selecionar "Autorizar Forneciemnto"
E preencher os campos disponíveis
Quando clicar em "Salvar"
E exibe "Relação entre produto e fornecedor"
E selecionar "Cancelar"
Entao grava os dados



@Cenario3
@Automatizar
@AutorizarNaoMovEst
Esquema do Cenario: Autorizar não fornecimento de estoque no pedido de compra
E selecionar "Autorizar Forneciemnto"
E preencher os campos disponíveis
Quando clicar em "Salvar"
E exibe "Relação entre produto e fornecedor"
E preencher os campos disponíveis
E selecionar "Ok"
Entao grava os dados