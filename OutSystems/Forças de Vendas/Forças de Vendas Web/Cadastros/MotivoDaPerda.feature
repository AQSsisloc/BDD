#language: pt
#MotivoDaPerda
#MotivoDaPerdaWeb


Funcionalidade: Cadastrar um motivo da perda na desqualificação de um cliente
  Como um usuário do Força de Vendas 
  Eu quero cadastrar um motivo da perda
  Para registar o motivo da desqualificação do cliente


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@MotivoDaPerda
Esquema do Cenario: Cadastrar um motivo da perda
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Motivo da Perda"
Quando clicar em "+Motivo"
E selecionar <Ativo>
E selecionar <Tipo>
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Ativo | Tipo       | MensagemDeSucesso                                 |
| Sim   | Proposta   | Motivo da perda "Teste AQS" criado com sucesso.   |
| Não   | Prospecção | Motivo da perda "Teste AQS 2" criado com sucesso. |



@Cenario2
@Automatizar
@MotivoDaPerda
Esquema do Cenario: Editar um motivo da perda cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Motivo da Perda"
Quando inserir <Pesquisar>
E clicar em "Lupa"
E selecionar <Motivo>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Pesquisar   | Motivo      | MensagemDeRetorno                                     |
| Teste AQS 2 | Teste AQS 2 | Motivo da Perda "Teste AQS 2" atualizado com sucesso! |



@Cenario3
@Automatizar
@MotivoDaPerda
Esquema do Cenario: Inativar um motivo da perda ativo
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Motivo da Perda"
Quando inserir <Pesquisar>
E clicar em "Lupa"
E selecionar <Motivo>
E clicar em "Editar"
E selecionar <Ativo>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisar   | Motivo      | Ativo | MensagemDeRetorno                                     |
| Teste AQS 2 | Teste AQS 2 | Não   | Motivo da Perda "Teste AQS 2" atualizado com sucesso! |



@Cenario4
@Automatizar
@MotivoDaPerda
Esquema do Cenario: Excluir um motivo da perda cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Motivo da Perda"
Quando inserir <Pesquisar>
E clicar em "Lupa"
E selecionar <Motivo>
E clicar em "Excluir"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa    | Motivo      | MensagemDeRetorno              |
| Teste AQS 2 | Teste AQS 2 | Registro excluído com sucesso! |



@Cenario5
@Automatizar
@VisualizarCondicaoDePagamento
Esquema do Cenario: Visualizar um motivo da perda
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Motivo da Perda"
Quando inserir em <Pesquisar>
E clicar em "Lupa"
E clicar em "Editar"
Entao abre o cadastro do motivo da perda

Exemplos:
| Pesquisar |
| Teste AQS |



@Cenario6
@Automatizar
@LimparPesquisaMotivoDaPerda
Cenario: Limpar os resultados da pesquisa do motivo da perda
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Motivo da Perda"
Quando clicar em "Limpar resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario7
@Automatizar
@FiltrarMotivoDaPerda
Cenario: Filtrar motivo da perda cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Motivo da Perda"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta o motivo da perda do filtro pesquisado



@Cenario8
@Automatizar
@AtualizarSincronizarSislocMotivoDaPerda
Esquema do Cenario: Atualizar e sincronizar dados com Sisloc e condição de pagamento
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Motivo da Perda"
Quando clicar em "Atualizar/Sincronizar com Sisloc"
E inserir <CodigoPessoaSisloc>
Entao sincroniza a página com dados com Sisloc

Exemplos:
| CodigoPessoaSisloc | MensagemDeRetorno                                             |
| 123                | Pessoa de código 123 foi atualizada/sincronizada com sucesso! |


