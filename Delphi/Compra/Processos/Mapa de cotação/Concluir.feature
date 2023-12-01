#language: pt
#Concluir
#Delphi


Funcionalidade: Concluir mapa de cotação.
  Como concluir o mapa de cotação
  Eu quero concluir o mapa de cotação sem permitir cotações aberta
  Para garantir que os itens foram cotados e feito o pedido de compra.


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@Concluir
Cenario: Concluir mapa de cotação sem cotação vencedora
E clicar em <Concluir>
E apresenta a <MensagemDeSucesso>


Exemplos:
| MensagemDeSucesso                                                                                            |
| Pelo motivo abaixo, esta operação não pôde ser executada: "Mapa de Cotação" possui(em) item(ns) "Em aberto". |



@Cenario2
@Automatizar
@Concluir
Cenario: Concluir mapa de cotação sem pedido de compras gerado
E clicar em <Concluir>
E apresenta a <MensagemDeSucesso>


Exemplos:
| MensagemDeSucesso                                                                                            |
| Pelo motivo abaixo, esta operação não pôde ser executada: "Mapa de Cotação" possui(em) item(ns) "Em aberto". |



@Cenario3
@Automatizar
@Concluir
Cenario: Concluir mapa de cotação com pedido de compras gerado
E clicar em <Concluir>
E conclui mapa de cotação