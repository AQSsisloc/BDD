#language: pt
#Adicionar itens
#Delphi


Funcionalidade: Adicionar itens no mapa de cotação.
  Como adicionar itens no mapa de cotação
  Eu quero adicionar itens no mapa de cotação
  Para adicionar itens solicitados no mapa de cotação


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@AdicionarItens
Cenario: Adicionar itens no mapa de cotação
E clicar em <AdicionarItens>
E clicar "Pesquisar"
E selecionar "Itens"
Quando clicar em <Ok>
Então insere itens mapa de cotação