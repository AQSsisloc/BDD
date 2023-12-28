#language: pt
#Pessoa
#Delphi


Funcionalidade: Cadastrar uma pessoa
  Como cadastrar uma pessoa no sistema
  Eu quero cadastrar uma pessoa no sistema
  Para utilizar o cadastro da pessoa nas demais rotinas do sistema.


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@Pessoa
@Cliente
Cenario: Cadastrar nome da pessoa
E selecionar "Cliente"
E preencher dados relacionado
Quando clicar em "Salvar"
Então grava dados



@Cenario2
@Automatizar
@Pessoa
@Fornecedor
Cenario: Cadastrar nome da pessoa
E selecionar "Fornecedor"
E preencher dados relacionado
Quando clicar em "Salvar"
Então grava dados



@Cenario3
@Automatizar
@Pessoa
@Funcionário
Cenario: Cadastrar nome da pessoa
E selecionar "Funcionário"
E preencher dados relacionado
Quando clicar em "Salvar"
Então grava dados



@Cenario4
@Automatizar
@Pessoa
@FuncionáriodeTerceiros
Cenario: Cadastrar nome da pessoa
E selecionar "Funcionário de Terceiros"
E preencher dados relacionado
Quando clicar em "Salvar"
Então grava dados



@Cenario5
@Automatizar
@Pessoa
@LocalEntrega
Cenario: Cadastrar nome da pessoa
E selecionar "Local Entrega"
E preencher dados relacionado
Quando clicar em "Salvar"
Então grava dados



@Cenario6
@Automatizar
@Pessoa
@Obra
Cenario: Cadastrar nome da pessoa
E selecionar "Obra"
E preencher dados relacionado
Quando clicar em "Salvar"
Então grava dados