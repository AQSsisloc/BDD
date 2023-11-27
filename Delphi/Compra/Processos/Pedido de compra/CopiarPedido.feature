#language: pt
#Copiar Pedido
#FDelphi


Funcionalidade: Copiar pedido de compra
  Como copiar pedido de compra
  Eu quero copiar o pedido de compra
  Para copiar o pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@CopiarPedido
Cenario: Copiar pedido de compra
E selecionar "Copiar pedido"
E selecionar "Não"
Então não faz a cópia do pedido de compra



@Cenario2
@Automatizar
@CopiarPedido
Cenario: Copiar pedido de compra
E selecionar "Copiar pedido"
E selecionar "Sim"
Então cria novo pedido de compra semelhente ao antigo
E grava <Status>

Exemplos:
| Status |
| Em aberto |