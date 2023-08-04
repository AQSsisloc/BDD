#language: pt
#Segmento
#ForcaDeVendasWeb


Funcionalidade: Cadastrar um segmento de uma Prospecção, Conta ou Oportunidade
  Como um usuário do Força de Vendas 
  Eu quero cadastrar um segmento
  Para utilizar nos processos de prospecção, conta ou oportunidade


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@Segmento
Esquema do Cenario: Cadastrar um segmento
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Segmento"
Quando clicar em "+Segmento"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| MensagemDeSucesso                        |
| Segmento 'Teste AQS' criado com sucesso. |



@Cenario2
@Automatizar
@Segmento
Cenario: Cancelar o cadastro de um segmento
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Segmento"
Quando clicar em "+Segmento"
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados



@Cenario3
@Automatizar
@Segmento
Esquema do Cenario: Editar um segmento cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Segmento"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Segmento>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Pesquisa  | Segmento  | MensagemDeSucesso                             |
| Teste AQS | Teste AQS | Segmento "Teste AQS 1" atualizado com suceso! |


@Cenario4
@Automatizar
@Segmento
Esquema do Cenario: Inativar um segmento ativo
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Segmento"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Segmento>
E clicar em "Editar"
E selecionar <Ativo>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa    | Segmento    | Ativo | MensagemDeRetorno                             |
| Teste AQS 2 | Teste AQS 2 | Não   | Segmento "Teste AQS 2" atualizado com suceso! |



@Cenario5
@Automatizar
@Segmento
Esquema do Cenario: Excluir um segmento cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Segmento"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Segmento>
E clicar em "Excluir"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa    | Segmento    | MensagemDeRetorno              |
| Teste AQS 2 | Teste AQS 2 | Registro excluído com sucesso! |



@Cenario6
@Automatizar
@PesquisarSegmento
Cenario: Pesquisar um segmento cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Segmento"
Quando clicar em "Pesquisar"
Entao apresenta todas os segmentos criados



@Cenario7
@Automatizar
@LimparPesquisasegmento
Cenario: Limpar os resultados de uma pesquisa do segmento
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Segmento"
Quando clicar em "Pesquisar"
Entao limpa os resultados do filtro da pesquisa 


@Cenario8
@Automatizar
@FiltrarSegmento
Cenario: Filtrar segmento cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Concorrente"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta o segmento do filtro pesquisado



@Cenario9
@Automatizar
@AuditoriaSegmento
Cenario: Visualizar auditoria do segmento
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Segmento"
Quando clicar em "Auditoria"
Entao apresenta a auditoria do segmento


