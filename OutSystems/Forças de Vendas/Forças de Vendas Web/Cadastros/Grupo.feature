#language: pt
#Grupo
#GrupoWeb


Funcionalidade: Visualizar um grupo de um produto e/ou serviço
  Como um usuário do Força de Vendas 
  Eu quero visualizar um grupo
  Para classificação dos itens do estoque e serviços


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@PesquisarGrupo
Esquema do Cenario: Visualizar um grupo cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Grupo"
Quando inserir <Pesquisar>
E clicar em "Lupa"
E selecionar <Grupo>
E clicar em "Editar" 
Entao apresenta o grupo cadastrado

Exemplos:
| Pesquisar                   | Grupo                       |
| PLACA VIBRATORIA REVERSIVEL | PLACA VIBRATORIA REVERSIVEL |



@Cenario2
@Automatizar
@LimparPesquisaGrupo
Cenario: Limpar os resultados de uma pesquisa do grupo
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Grupo"
Quando clicar em "Limpar resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario3
@Automatizar
@FiltrarGrupo
Cenario: Filtrar grupo cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Grupo"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta a atividade do filtro pesquisado



@Cenario4
@Automatizar
@AtualizarSincronizarSislocGrupo
Esquema do Cenario: Atualizar e sincronizar dados com Sisloc e grupo
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Grupo"
Quando clicar em "Atualizar/Sincronizar com Sisloc"
E inserir <CodigoPessoaSisloc>
Entao sincroniza a página com dados com Sisloc

Exemplos:
| CodigoPessoaSisloc | MensagemDeRetorno                                             |
| 123                | Pessoa de código 123 foi atualizada/sincronizada com sucesso! |


