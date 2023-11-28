#language: pt
#informarQtRecebida
#Delphi


Funcionalidade: Informar a quantidade recebida no pedido de compra
  Como informar a quantidade reccebida do pedido de compra
  Eu quero informar a quantidade recebida no pedido de compra
  Para informar a quantidade de itens recebido no pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@InformarQtrecebida
Cenario: Informar quantidade recebida no pedido de compra na aba 4 - Produtos. Pedido de compra tem que está com status Autrizado.
Quando selecionar "Informar Qt. Recebido"
E preencher campos disponíveis
E selecionar "Cancelar"
Então fecha a tela sem grava dados



@Cenario2
@Automatizar
@InformarQtrecebida
Esquema do Cenario: Informar quantidade recebida no pedido de compra na aba 4 - Produtos. Pedido de compra tem que está com status Autrizado.
E selecionar "Informar Qt. Recebido"
E preencher campos disponíveis
E informar quantidade recebida menor que o informado no pedido de compra
Quando selecionar "Ok"
E grava a quantidade reebida na aba 4 - Produtos.
E recalcula valores do produto e impostos
E selecionar "Encerrar"
E apresenta a <MensagemDeSucesso>
E selecionar "Não"
Então não gera pedido de compra com itens pendentes
E encerra pedido de compra

Exemplos:
| MensagemDeSucesso                                                                                                                    |
| Os itens abaixo possuem quantidades pendentes de recebimento. Deseja gerar um novo pedido de compra com os itens pendentes? Produto: |



@Cenario3
@Automatizar
@InformarQtrecebida
Esquema do Cenario: Informar quantidade recebida no pedido de compra na aba 4 - Produtos. Pedido de compra tem que está com status Autrizado.
E selecionar "Informar Qt. Recebido"
E preencher campos disponíveis
E informar quantidade recebida menor que o informado no pedido de compra
Quando selecionar "Ok"
E grava a quantidade reebida na aba 4 - Produtos.
E recalcula valores do produto e impostos
E selecionar "Encerrar"
E apresenta a <MensagemDeSucesso>
E selecionar "Sim"
E selecionar "Gerar CAP provisório"
E selecionar "OK"
Então gera pedido de compra com itens pendentes
E encerra pedido de compra

Exemplos:
| MensagemDeSucesso                                                                                                                    |
| Os itens abaixo possuem quantidades pendentes de recebimento. Deseja gerar um novo pedido de compra com os itens pendentes? Produto: |