#language: pt
#Captador
#FuncionarioWeb


Funcionalidade: Cadastrar um funcionário 
  Como um usuário do Força de Vendas 
  Eu quero cadastrar um funcionário
  Para utilizar nos processos de captador, concorrente e vendedor


Dado esteja logado no Força de Vendas Web



@Cenario1
@Automatizar
@Funcionario
Esquema do Cenario: Cadastrar um funcionário de um pessoa já cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando clicar em "+Funcionário"
E inserir <Nome>
E clicar em "Buscar"
E selecionar <Pessoa>
E clicar em "Raio"
E clicar em "Sim"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Nome                    | Pessoa                  | MensagemDeSucesso                                        |
| Claudio Marcio de Souza | Claudio Marcio de Souza | Funcionário "Claudio Marcio de Souza" criado com suceso! |



