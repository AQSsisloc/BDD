#language: pt
#ImportacaoNotaEntradaXML
#Delphi


Funcionalidade: Importação de itens do XML para o pedido de compra
  Como importar itens do XML para o pedido de compra
  Eu quero importar itens do XML para o pedido de compra
  Para importar itens do XML para o pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@ImportaçãoNotaFiscalXML
Cenario: Importação do XML de pedido de compra
E selecionar "Alçada"
E selecionar "Produto"
E selecionar "CFOP"
Quando selecionar "Ok"
Então grava os dados 
E gera pedido de compra



@Cenario2
@Automatizar
@Anotações
Cenario: Anotar informações do XML no pedido de compra
Quando concluir importação do XML 
Entao grava "Anotações"
E anexa XML  



@Cenario3
@Automatizar
@ImportacaoNotaFiscalXML
Cenario: Importação do XML de pedido de compra pela grid 
E selecionar "Alçada"
E selecionar "Produto"
E selecionar "CFOP"
Quando selecionar "Ok"
Então grava os dados 
E gera pedido de compra
E grava "Anotações"
E anexa XML  


@Cenario4
@Automatizar
@ImportacaoNotaFiscalXML
Cenario: Importação do XML de pedido de compra
E selecionar "Alçada"
E selecionar "Produto"
E selecionar "CFOP"
Quando selecionar "Ok"
E validar "Produto repetido"
E emite mensagem
Então grava os dados 
E gera pedido de compra
E grava "Anotações"
E anexa XML