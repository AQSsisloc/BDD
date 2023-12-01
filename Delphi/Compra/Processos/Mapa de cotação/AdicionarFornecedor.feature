#language: pt
#Adicionar fornecedores
#Delphi


Funcionalidade: Adicionar fornecedores no mapa de cotação.
  Como adicionar fornecedores no mapa de cotação
  Eu quero adicionar fornecedores no mapa de cotação
  Para adicionar fornecedores solicitados no mapa de cotação


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@AdicionarFornecedores
Cenario: Adicionar fornecedores no mapa de cotação
E clicar em <AdicionarFornecedores>
E clicar "Pesquisar"
E pesquisar o "Fornecedor"
E selecionar "Adionar Fornecedor"
Quando clicar em <Ok>
Então insere fornecedor no mapa de cotação