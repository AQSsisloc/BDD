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



@Cenario2
@Automatizar
@Funcionario
Esquema do Cenario: Cadastrar um funcionário de um pessoa não cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando clicar em "+Funcionário"
E inserir <Nome>
E clicar em "Criar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Nome                             | MensagemDeSucesso                                                 |
| Mariano Francisco Martins Toledo | Funcionário "Mariano Francisco Martins Toledo" criado com suceso! |



@Cenario3
@Automatizar
@Funcionario
Esquema do Cenario: Cadastrar um funcionário e inserir um funcionário de terceiro
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando clicar em "+Funcionário"
E inserir <Nome>
E clicar em "Criar"
E preencher os campos disponíveis
E selecionar "Funcionário de terceiro"
E inserir <Empregador>
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Nome                             | Empregador                | MensagemDeSucesso                                                 |
| Mariano Francisco Martins Toledo | Gislene Lopes de Oliveira | Funcionário "Mariano Francisco Martins Toledo" criado com suceso! |



@Cenario4
@Automatizar
@Funcionario
Esquema do Cenario: Editar um endereço do funcionário
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Funcionario>
E clicar em "Editar"
E clicar em "Editar" na aba Endereços
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Pesquisa                         | Funcionario                      | MensagemDeSucesso            |
| Mariano Francisco Martins Toledo | Mariano Francisco Martins Toledo | Endereço criado com sucesso! |


