#language: pt
#Patrimonio
#PatrimonioWeb


Funcionalidade: Visualizar um patrimônio 
  Como um usuário do Força de Vendas 
  Eu quero visualizar um patrimônio
  Para utilizar na proposta


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@PesquisarPatrimonio
Esquema do Cenario: Visualizar um patrimônio cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Patrimônio"
Quando inserir <Pesquisar>
E clicar em "Lupa"
E selecionar <Grupo>
E clicar em "Editar" 
Entao apresenta o patrimônio cadastrado

Exemplos:
| Pesquisar | Patrimônio |
| 013       | 013        |



@Cenario2
@Automatizar
@LimparPesquisaPatrimonio
Cenario: Limpar os resultados de uma pesquisa do patrimônio
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Patrimônio"
Quando clicar em "Limpar resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario3
@Automatizar
@FiltrarPatrimonio
Cenario: Filtrar patrimônio cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Patrimônio"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta o patrimônio do filtro pesquisado



@Cenario4
@Automatizar
@AtualizarSincronizarSislocPatrimonio
Esquema do Cenario: Atualizar e sincronizar dados com Sisloc e patrimônio
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Patrimônio"
Quando clicar em "Atualizar/Sincronizar com Sisloc"
E inserir <CodigoPatrimonioSisloc>
Entao sincroniza a página com dados com Sisloc

Exemplos:
| CodigoPatrimonioSisloc | MensagemDeRetorno                                             |
| 013                    | Patrimônio do ID 013 foi atualizada/sincronizada com sucesso! |


