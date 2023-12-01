#language: pt
#Aprovar Solicitação
#Delphi


Funcionalidade: Aprovar o item da solicitação de compras no qual será liberado para o mapa de cotação.
  Como aprovar solicitação de compras para o mapa de cotação
  Eu quero aprovar item da solicitação de compras sem a necessidade de entrar na solicitação de compras
  Para aprovar o item da solicitação de compras sem a necessidade de entrar em item a item


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@AprovarSolicitacao
Cenario: Aprovar solcitação de compra
E clicar em <AprovarSolicitacao>
E selecionar "Entrada em"
E clicar "Ok"
E selecionar "Itens"
Quando clicar em <Ok>
E aprovar itens