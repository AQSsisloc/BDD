#language: pt
#Concorrente
#ForcaDeVendasWeb


Funcionalidade: Cadastrar um concorrente para ser informado no motivo da perda de uma proposta
  Como um usuário do Força de Vendas 
  Eu quero cadastrar um concorrente
  Para utilizar no processo de proposta


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@Concorrente
Esquema do Cenario: Cadastrar um concorrente de uma pessoa já cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Concorrente"
Quando clicar em "+Concorrente"
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
| Nome      | Pessoa    | MensagemDeSucesso                           |
| Teste AQS | Teste AQS | Concorrente "Teste AQS " criado com suceso! |



@Cenario2
@Automatizar
@Concorrente
Esquema do Cenario: Cadastrar um concorrente de uma pessoa não cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Concorrente"
Quando clicar em "+Concorrente"
E inserir <Nome>
E clicar em "Criar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Nome        | MensagemDeSucesso                            |
| Teste AQS 1 | Concorrente "Teste AQS 1" criado com suceso! |



@Cenario3
@Automatizar
@Concorrente
Esquema do Cenario: Editar um concorrente cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Concorrente"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Concorrente>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Pesquisa    | Concorrente | MensagemDeSucesso                                 |
| Teste AQS 1 | Teste AQS 1 | Concorrente "Teste AQS 1" atualizado com sucesso! |



@Cenario4
@Automatizar
@Captador
Esquema do Cenario: Inativar um concorrente ativo
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Concorrente"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Concorrente>
E clicar em "Editar"
E selecionar <Ativo>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa            | Concorrente         | Ativo | MensagemDeSucesso                                 |
| Teste Concorrente 2 | Teste Concorrente 2 | Não   | Concorrente "Teste AQS 2" atualizado com sucesso! |



@Cenario5
@Automatizar
@Concorrente
Esquema do Cenario: Excluir um concorrente cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Concorrente"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Concorrente>
E clicar em "Excluir"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa    | Concorrente | MensagemDeSucesso              |
| Teste AQS 1 | Teste AQS 1 | Registro excluído com sucesso! |



@Cenario6
@Automatizar
@PesquisarConcorrente
Cenario: Pesquisar um concorrente cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Concorrente"
Quando clicar em "Pesquisar"
Entao apresenta todos os concorrentes criados e ativos



@Cenario7
@Automatizar
@LimparPesquisaConcorrente
Cenario: Limpar os resultados de uma pesquisa do concorrente
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Concorrente"
Quando clicar em "Pesquisar"
Entao limpa os resultados do filtro da pesquisa 



@Cenario8
@Automatizar
@FiltrarConcorrente
Cenario: Filtrar concorrente cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Concorrente"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta o concorrente do filtro pesquisado



@Cenario9
@Automatizar
@AuditoriaCaptador
Cenario: Visualizar auditoria do concorrente
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Concorrente"
Quando clicar em "Auditoria"
Entao apresenta a auditoria do concorrente


