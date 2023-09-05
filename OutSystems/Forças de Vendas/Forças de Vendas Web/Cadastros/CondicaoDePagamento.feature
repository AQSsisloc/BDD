#language: pt
#Segmento
#CondicaoDePagamentoWeb


Funcionalidade: Visualizar uma condição de pagamento integrada do Sisloc
  Como um usuário do Força de Vendas 
  Eu quero visualizar uma condição de pagamento
  Para utilizar no processo de conta


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@CondicaoDePagamento
Esquema do Cenario: Consultar uma condição de pagamento
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Condição de Pagamento"
Quando inserir em <Pesquisa>
E clicar em "Lupa"
Entao a condição de pagamento consultada

Exemplos:
| Pesquisa |
| 28 dias  |



@Cenario2
@Automatizar
@CondicaoDePagamento
Esquema do Cenario: Visualizar uma condição de pagamento
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Condição de Pagamento"
Quando inserir em <Pesquisa>
E clicar em "Lupa"
E clicar em "Visualizar"
Entao abre o cadastro da condição de pagamento

Exemplos:
| Pesquisa |
| 28 dias  |



@Cenario3
@Automatizar
@LimparPesquisaCondicaoDePagamento
Cenario: Limpar os resultados da pesquisa da condição de pagamento
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Condição de Pagamento"
Quando clicar em "Limpar resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario4
@Automatizar
@FiltrarCondicaoDePagamento
Cenario: Filtrar condição de pagamento cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Condição de Pagamento"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta a condição de pagamento do filtro pesquisado



@Cenario5
@Automatizar
@AtualizarSincronizarSislocCondicaoDePagamento
Esquema do Cenario: Atualizar e sincronizar dados com Sisloc e condição de pagamento
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Condição de Pagamento"
Quando clicar em "Atualizar/Sincronizar com Sisloc"
E inserir <CodigoPessoaSisloc>
Entao sincroniza a página com dados com Sisloc

Exemplos:
| CodigoPessoaSisloc | MensagemDeRetorno                                             |
| 123                | Pessoa de código 123 foi atualizada/sincronizada com sucesso! |


