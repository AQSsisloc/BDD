#language: pt
#Imprimir
#Delphi


Funcionalidade: Imprimir mapa de cotação.
  Como imprimir cotação dos fornecedores no mapa de cotação
  Eu quero imprimir cotação dos fornecedores no mapa de cotação
  Para imprimir cotação dos fornecedores no mapa de cotação


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@Imprimir
@Menor3Fornecedores
Cenario: Imprimir cotação dos fornecedores no mapa de cotação
E clicar em <Imprimir>
Então exibe fornecedor no mapa de cotação



@Cenario2
@Automatizar
@Imprimir
@Maior3Fornecedores
Cenario: Imprimir cotação dos fornecedores no mapa de cotação
E clicar em <imprimir>
E selecionar até 3 fornecedores
Então exibe fornecedor no mapa de cotação