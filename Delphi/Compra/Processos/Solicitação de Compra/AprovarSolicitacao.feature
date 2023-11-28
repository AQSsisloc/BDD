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
@UltimasCompras
Cenario: Listar as últimas compras do produto selecionado
Quando clicar em <UltimasCompras>
E gera o <Relatorio>