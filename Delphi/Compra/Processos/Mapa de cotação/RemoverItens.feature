#language: pt
#Remover itens
#Delphi


Funcionalidade: Remover itens no mapa de cotação.
  Como remover itens no mapa de cotação
  Eu quero remover itens no mapa de cotação
  Para remover itens solicitados no mapa de cotação


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@RemoverItens
Cenario: Remover itens no mapa de cotação
E clicar em <RemoverItens>
E clicar "Pesquisar"
E selecionar "Itens"
Quando clicar em <Ok>
Então remove itens mapa de cotação