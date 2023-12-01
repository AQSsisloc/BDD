#language: pt
#Gerar mapa de cotação
#Delphi


Funcionalidade: Gerar o mapa de cotação sem a necessidade de adicionar o cabeçalho dos daodos.
  Como gerar mapa de cotação informando somente os itens
  Eu quero inserir itens aprovador na solicitação de compras 
  Para inserir itens da solicitação de compras no mapa de cotação


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@GerarMapadeCotacao
Cenario: Liberar solcitação de compra
E clicar em <GerarMapadeCotacao>
E clicar "Pesquisar"
E selecionar "Itens"
Quando clicar em <Ok>
Então gera mapa de cotação