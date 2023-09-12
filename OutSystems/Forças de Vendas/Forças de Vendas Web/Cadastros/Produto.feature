#language: pt
#Produto
#ProdutoWeb


Funcionalidade: Visualizar um produto cadastrado pelo Sisloc
  Como um usuário do Força de Vendas 
  Eu quero visualizar um produto
  Para utilizar na proposta 


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@VisualizarProduto
Esquema do Cenario: Visualizar um produto cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Produto"
Quando inserir <Pesquisar>
E clicar em "Lupa"
E selecionar <Produto>
E clicar em "Editar" 
Entao apresenta o produto cadastrado

Exemplos:
| Pesquisar | Produto           |
| 77657     | Abraçadeira 77657 |



@Cenario2
@Automatizar
@AlterarInformacoesAdicionaisProduto
Esquema do Cenario: Alterar informações adicionais de um produto cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Produto"
Quando inserir <Pesquisar>
E clicar em "Lupa"
E selecionar <Produto>
E clicar em "Editar" 
E selecionar "Inf.Adicionais"
E clicar em "Editar Informações"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Pesquisar | Produto           | MensagemDeSucesso               |
| 77657     | Abraçadeira 77657 | Informações salvas com sucesso! |



@Cenario3
@Automatizar
@InserirCamposCustomizadosProduto
Esquema do Cenario: Inserir dados nos campos customizados de um produto cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Produto"
Quando inserir <Pesquisar>
E clicar em "Lupa"
E selecionar <Produto>
E clicar em "Editar" 
E selecionar "Campos Customizados"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Pesquisar | Produto           | MensagemDeSucesso          |
| 77657     | Abraçadeira 77657 | Campos salvos com sucesso! |



@Cenario4
@Automatizar
@LimparPesquisaProduto
Cenario: Limpar os resultados de uma pesquisa do produto
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Produto"
Quando clicar em "Limpar resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario5
@Automatizar
@FiltrarPatrimonio
Cenario: Filtrar produto cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Produto"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta o produto do filtro pesquisado



@Cenario6
@Automatizar
@AtualizarSincronizarSislocProduto
Esquema do Cenario: Atualizar e sincronizar dados com Sisloc e produto
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Produto"
Quando clicar em "Atualizar/Sincronizar com Sisloc"
E inserir <CodigoProdutoSisloc>
Entao sincroniza a página com dados com Sisloc

Exemplos:
| CodigoProdutoSisloc | MensagemDeRetorno                                               |
| 77657               | Produto de código 5165 foi atualizado/sincronizado com sucesso! |


