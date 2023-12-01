#language: pt
#Remover fornecedores
#Delphi


Funcionalidade: Remover fornecedores no mapa de cotação.
  Como remover fornecedores no mapa de cotação
  Eu quero remover fornecedores no mapa de cotação
  Para remover fornecedores solicitados no mapa de cotação


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@RemoverFornecedores
Cenario: Remover fornecedores no mapa de cotação
E clicar em <RemoverFornecedores>
E clicar "Pesquisar"
E pesquisar o "Fornecedor"
E selecionar "Remover Fornecedor"
Quando clicar em <Ok>
Então remove fornecedor no mapa de cotação