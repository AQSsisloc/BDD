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



@Cenario5
@Automatizar
@Funcionario
Esquema do Cenario: Excluir um endereço do funcionário
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Funcionario>
E clicar em "Editar" 
E clicar em "Excluir" na aba Endereços
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa  | Funcionario | MensagemDeSucesso      |
| Teste AQS | Teste AQS   | Endereços atualizados! |



@Cenario6
@Automatizar
@Funcionario
Esquema do Cenario: Inativar um endereço do funcionário
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Funcionario>
E clicar em "Editar" 
E clicar em "Editar" na aba Endereços
E selecionar <Ativo>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa  | Captador  | Ativo | MensagemDeSucesso            |
| Teste AQS | Teste AQS | Não   | Endereço criado com sucesso! |



@Cenario7
@Automatizar
@Funcionario
Esquema do Cenario: Visualizar mapa do endereço do funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Funcionario>
E clicar em "Editar" 
E clicar em "Mapa" na aba Endereços
Entao apresenta o mapa do endereço

Exemplos:
| Pesquisa  | Funcionario |
| Teste AQS | Teste AQS   |



@Cenario8
@Automatizar
@Funcionario
Esquema do Cenario: Cadastrar um funcionário e cancelar o processo de criação
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando clicar em "+Funcionário"
E inserir <Nome>
E clicar em "Criar"
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Nome        |
| Teste AQS 2 |



@Cenario9
@Automatizar
@Funcionario
Esquema do Cenario: Editar um funcionário cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Funcionario>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa  | Funcionario | MensagemDeRetorno                              |
| Teste AQS | Teste AQS   | Funcionário "Teste AQS" atualizado com suceso! |



@Cenario10
@Automatizar
@Funcionario
Esquema do Cenario: Inativar um funcionário cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Funcionario>
E clicar em "Editar"
E selecionar <Ativo>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa  | Funcionario | Ativo | MensagemDeRetorno                              |
| Teste AQS | Teste AQS   | Não   | Funcionário "Teste AQS" atualizado com suceso! |



@Cenario11
@Automatizar
@Funcionario
Esquema do Cenario: Excluir um funcionário cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Funcionario>
E clicar em "Excluir"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa    | Funcionario | MensagemDeRetorno              |
| Teste AQS 2 | Teste AQS 2 | Registro excluído com sucesso! |



@Cenario12
@Automatizar
@PesquisarFuncionario
Cenario: Pesquisar um funcionário cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando clicar em "Pesquisar"
Entao apresenta todos os funcionários criados e ativos



@Cenario13
@Automatizar
@LimparPesquisaFuncionario
Cenario: Limpar os resultados de uma pesquisa do funcionário
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando clicar em "Limpar resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario14
@Automatizar
@FiltrarFuncionario
Cenario: Filtrar funcionário cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta a atividade do filtro pesquisado



@Cenario15
@Automatizar
@AtualizarSincronizarSislocFuncionario
Esquema do Cenario: Atualizar e sincronizar dados com Sisloc e funcionário
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando clicar em "Atualizar/Sincronizar com Sisloc"
E inserir <CodigoPessoaSisloc>
Entao sincroniza a página com dados com Sisloc

Exemplos:
| CodigoPessoaSisloc | MensagemDeRetorno                                           |
| 123                | Pessoa de código 1 foi atualizada/sincronizada com sucesso! |



@Cenario16
@Automatizar
@AuditoriaFuncionario
Cenario: Visualizar auditoria do funcionário
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Funcionário"
Quando clicar em "Auditoria"
Entao apresenta a auditoria do funcionário


