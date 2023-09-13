#language: pt
#Servico
#ServicoWeb


Funcionalidade: Visualizar um serviço cadastrado pelo Sisloc
  Como um usuário do Força de Vendas 
  Eu quero visualizar um serviço
  Para utilizar na proposta 


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@VisualizarServico
Esquema do Cenario: Visualizar um serviço cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Serviço"
Quando inserir <Pesquisar>
E clicar em "Lupa"
E selecionar <Servico>
E clicar em "Editar" 
Entao apresenta o serviço cadastrado

Exemplos:
| Pesquisar           | Servico             |
| Checkup de correias | Checkup de correias |



@Cenario2
@Automatizar
@AlterarFranquiaServico
Esquema do Cenario: Alterar franquia de um serviço cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Serviço"
Quando inserir <Pesquisar>
E clicar em "Lupa"
E selecionar <Servico>
E clicar em "Editar" 
E selecionar "Configurar Franquia"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Pesquisar           | Servico             | MensagemDeSucesso               |
| Checkup de correias | Checkup de correias | Informações salvas com sucesso! |



@Cenario3
@Automatizar
@InserirCamposCustomizadosServico
Esquema do Cenario: Inserir dados nos campos customizados de um serviço cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Serviço"
Quando inserir <Pesquisar>
E clicar em "Lupa"
E selecionar <Servico>
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
@LimparPesquisaServiço
Cenario: Limpar os resultados de uma pesquisa do serviço
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Serviço"
Quando clicar em "Limpar resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario5
@Automatizar
@FiltrarServiço
Cenario: Filtrar serviço cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Serviço"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta o serviço do filtro pesquisado



@Cenario6
@Automatizar
@AtualizarSincronizarSislocServiço
Esquema do Cenario: Atualizar e sincronizar dados com Sisloc e serviço
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Serviço"
Quando clicar em "Atualizar/Sincronizar com Sisloc"
E inserir <CodigoServicoSisloc>
Entao sincroniza a página com dados com Sisloc

Exemplos:
| CodigoServicoSisloc | MensagemDeRetorno                                                  |
| 001                 | Serviço 1 Cilindro Diesel foi atualizado/sincronizado com sucesso! |


