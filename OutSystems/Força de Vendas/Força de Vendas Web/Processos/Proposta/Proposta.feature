#language: pt
#Proposta
#ForcaDeVendasWeb


Funcionalidade: Gerenciar Propostas 
  Como um usuário do Forca de Vendas Web 
  Eu quero gerenciar as propostas de venda ou locação
  Para ter controle da situação dos equipamentos 


@Cenario1
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Concluir elaboração de Proposta
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
Quando clicar em "+Proposta"
E preencher os campos disponíveis
E clicar em "Salvar"
E clicar "Produto"
E selecionar <Produto>
E clicar "+Adicionar"
E clicar "Concluir Elaboração"
Entao grava os dados
E apresenta <MensagemCriacao>

Exemplos:
| Produto                                | MensagemCriacao |
| PG100G -  Acabadora de Concreto PG100G | -               |



@Cenario2
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Concluir elaboração com produto com valor zerado
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
Quando clicar em "+Proposta"
E preencher os campos disponíveis
E clicar em "Salvar"
E clicar "Produto"
E selecionar <Produto>
E clicar "+Adicionar"
E clicar "Concluir Elaboração"
E clciar "Confirmar"
Entao grava os dados
E apresenta <MensagemCriacao>

Exemplos:
| Produto                                | MensagemCriacao |
| PG100G -  Acabadora de Concreto PG100G | -               |



@Cenario3
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Alterar empresa da Proposta
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Detalhes"
Quando clicar "Alterar Empresa"
E selecionar <Empresa>
E clicar em "Alterar"
Entao grava os dados
E apresenta <MensagemEmpresa>

Exemplos:
| Proposta | Empresa     | MensagemEmpresa              |
| 5769-01  | BH LOCADORA | Empresa alterada com sucesso |



@Cenario4
@Manual
@Proposta
Esquema do Cenario: Criar atividade de elaboração na Proposta 
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
Quando clicar em "+Atividade"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta <MensagemAtividade>

Exemplos:
| Produto                                | MensagemAtividade                        |
| PG100G -  Acabadora de Concreto PG100G | Atividade teste - AQS salva com sucesso! |



@Cenario5
@Automatizar
@Proposta
Esquema do Cenario: Iniciar atividade da Proposta
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja com <Atividade> 
Quando clicar em "Iniciar"
Entao grava os dados
E apresenta <MensagemAtividade>

Exemplos:
| Proposta | Atividade | MensagemAtividade                        |
| 5769-01  | AQS       | Atividade teste - AQS salva com sucesso! |



@Cenario6
@Automatizar
@Proposta
Esquema do Cenario: Excluir atividade da Proposta
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja com <Atividade> 
Quando clicar em "Excluir"
E confirmar "Sim"
Entao exclui atividade 
E apresenta <MensagemAtividade>

Exemplos:
| Proposta | Atividade | MensagemAtividade                        |
| 5769-01  | AQS       | Atividade teste - AQS salva com sucesso! |



@Cenario7
@Automatizar
@Proposta
Esquema do Cenario: Cencelar atividade da Proposta
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja com <Atividade> 
Quando clicar em "Cancelar"
E confirmar "Sim"
Entao grava os dados
E apresenta <MensagemAtividade>

Exemplos:
| Proposta | Atividade | MensagemAtividade                        |
| 5769-01  | AQS       | Atividade teste - AQS salva com sucesso! |



@Cenario8
@Manual
@Proposta
Esquema do Cenario: Adicionar nota na Proposta
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração" 
Quando clicar em "+ Nota"
E preencher o campo 
E clicar "Incluir"
Entao grava os dados
E apresenta <MensagemAtividade>

Exemplos:
| Proposta | MensagemAtividade |
| 5769-01  | -                 |



@Cenario9
@Automatizar
@Proposta
Esquema do Cenario: Excluir nota da Proposta
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração" 
E esteja na aba "Nota"
Quando clicar em "Excluir nota"
E confirmar "Sim"
Entao grava os dados
E apresenta <MensagemAtividade>

Exemplos:
| Proposta | MensagemAtividade |
| 5769-01  | -                 |



@Cenario10
@Manual
@PropostaElaboracao
Esquema do Cenario: Inserir Projeto Integrado CAD na Proposta 
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E tenha projetos integrados CAD cadastrado no Sisloc 
Quando clicar em "+ Projeto Integrado CAD"
E inserir <ProjetoCAD>
E preencher os dados 
E clicar "Copiar Dados"
Entao grava os dados
E apresenta <MensagemIntegracao>

Exemplos:
| Proposta | ProjetoCAD | MensagemIntegracao                                                  |
| 5769-01  | TESTE AQS  | Processo "Copiar Dados Projeto Integrado CAD" executado com sucesso |



@Cenario11
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Disponibilidade Futura no Projeto Integrado CAD da Proposta 
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E tenha projetos integrados CAD cadastrado no Sisloc 
Quando clicar em "+ Projeto Integrado CAD"
E inserir <ProjetoCAD>
E clicar "Ações"
E seleciona <DisponibilidadeDiaria>
Entao exibe os dados 

Exemplos:
| Proposta | ProjetoCAD | DisponibilidadeDiaria                           |
| 5769-01  | TESTE AQS  | Considerar orçamento realizados                 |
| 5769-01  | TESTE AQS  | Mostrar somente dias com o estoque insuficiente |



@Cenario12
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Excluir produto no Projeto Integrado CAD da Proposta 
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E tenha projetos integrados CAD cadastrado no Sisloc 
Quando clicar em "+ Projeto Integrado CAD"
E inserir <ProjetoCAD>
E clicar "Excluir" no <Produto>
Entao exclui o produto 

Exemplos:
| Proposta | ProjetoCAD | Produto                               |
| 5967-01  | TESTE AQS  | PG100G - Acabadora de Concreto PG100G |



@Cenario13
@Manual
@PropostaElaboracao
Esquema do Cenario: Desvincular Projeto Integrado CAD na Proposta 
Dado que esteja logado ao Sisloc com usuário funcionário 
E esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E tenha projetos integrados CAD cadastrado no Sisloc 
E proposta esteja vinculada ao <ProjetoCAD>
Quando clicar em "Visualizar Projeto Integrado CAD"
E clicar "Desvincular Projeto Integrado CAD da Proposta"
E clicar "Sim"
Entao desvinculad Projeto Integado CAD da Proposta
E exibe <MensagemExclusao>

Exemplos:
| Proposta | ProjetoCAD | MensagemExclusao                                                     |
| 5967-01  | TESTE AQS  | Processo "Desvincular o Projeto Integrado CAD" executado com sucesso |



@Cenario14
@Manual
@PropostaElaboracao
Esquema do Cenario: Inserir acréssimo ou desconto no produto da Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "Acrés/Desc. PRODUTO"
E preencher os campos disponíveis
E clicar em "Aplicar"
Entao grava os dados
E apresenta <MensagemAcresDesc>

Exemplos:
| Proposta | MensagemAcresDesc                             |
| 5967-01  | Desconto Geral aplicado nos items com sucesso |



@Cenario15
@Manual
@PropostaElaboracao
Esquema do Cenario: Alterar data da Remessa Da Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "Datas Remessa"
E preencher os campos disponíveis
E clicar em "Aplicar"
Entao grava os dados
E apresenta <MensagemData>

Exemplos:
| Proposta | MensagemData                 |
| 5967-01  | Datas alteradas com sucesso! |



@Cenario16
@Manual
@PropostaElaboracao
Esquema do Cenario: Adicionar composição na Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "+ Composição"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta <MensagemComposicao>

Exemplos:
| Proposta | MensagemComposicao |
| 5967-01  | -                  |



@Cenario17
@Manual
@PropostaElaboracao
Esquema do Cenario: Adicionar produto na Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "+ Produto"
E preencher os campos disponíveis
E clicar em "Adicionar"
Entao grava os dados
E apresenta <MensagemProduto>

Exemplos:
| Proposta | MensagemProduto |
| 5967-01  | -               |



@Cenario18
@Manual
@PropostaElaboracao
Esquema do Cenario: Adicionar vários produtos na Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "+ Vários Produtos"
E preencher os campos disponíveis
E clicar em "Salvar Produtos"
Entao grava os dados
E apresenta <MensagemProdutos>

Exemplos:
| Proposta | MensagemProdutos |
| 5967-01  | -                |



@Cenario19
@Manual
@PropostaElaboracao
Esquema do Cenario: Editar produto da Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "Seta" no <Produto>
E e clicar "Editar"
E preencher os dados 
E clicar "+Salvar"
Entao grava os dados
E apresenta <MensagemEdicaoProduto>

Exemplos:
| Proposta | Produto           | MensagemProdutos |
| 5967-01  | 7511 - Bebebdouro | -                |



@Cenario20
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Excluir produto da Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "Seta" no <Produto>
E e clicar "Excluir"
E clicar "Sim"
Entao grava os dados
E apresenta <MensagemExclusaoProduto>

Exemplos:
| Proposta | Produto           | MensagemProdutos                      |
| 5967-01  | 7511 - Bebebdouro | Item selecionado removido com sucesso |



@Cenario21
@Manual
@PropostaElaboracao
Esquema do Cenario: Criar Parâmetro de Apontamento no produto da Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "Seta" no <Produto>
E clicar "+Parâmetro de Apontamento"
E preencher os dados 
E clicar "Salvar"
Entao grava os dados
E apresenta <MensagemApontamentoProduto>

Exemplos:
| Proposta | Produto                               | MensagemProdutos                              |
| 5967-01  | PG90G - Acabadora de Concreto PG90G 2 | Parâmetros de apontamento salvos com sucesso! |



@Cenario22
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Visualizar patrimônio referência do produto da Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "Seta" no <Produto>
E clicar "Patrimônio Referência"
Entao exibe os dados dos patrimônios 

Exemplos:
| Proposta | Produto                               | 
| 5967-01  | PG90G - Acabadora de Concreto PG90G 2 | 



@Cenario23
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Excluir patrimônio referência do produto da Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "Seta" no <Produto>
E clicar "Patrimônio Referência"
E clicar no <Patrimonio> 
E clicar "Excluir"
Entao exclui patrimônio
E apresenta <MensagemPatrimonio>

Exemplos:
| Proposta | Produto                               | Patrimonio     | MensagemPatrimonio |
| 5967-01  | PG90G - Acabadora de Concreto PG90G 2 | Bebebdouro 010 | -                  |



@Cenario24
@Manual
@PropostaElaboracao
Esquema do Cenario: Adicionar serviço na Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "+ Serviço" 
E preencher os dados 
E clicar "Adicionar"
Entao adiciona serviço
E apresenta <MensagemServico>

Exemplos:
| Proposta | MensagemServico |
| 5967-01  | -               |



@Cenario25
@Manual
@PropostaElaboracao
Esquema do Cenario: Adicionar vários serviços na Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
Quando clicar em "+ Vários Serviços" 
E preencher os dados 
E clicar "Adicionar"
Entao adiciona seviços 
E apresenta <MensagemServico>

Exemplos:
| Proposta | MensagemServico |
| 5967-01  | -               |



@Cenario26
@Manual
@PropostaElaboracao
Esquema do Cenario: Adicionar Acrés/Desc. SERVIÇO na Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
E esteja com <Servico> 
Quando clicar em "Adicionar Acés/Desc. SERVIÇO" 
E preencher os dados 
E clicar "Aplicar"
Entao adiciona acres/desc no serviço da prosposta 
E apresenta <MensagemServico>

Exemplos:
| Proposta | Servico    | MensagemServico |
| 5967-01  | Ajudante 3 | -               |



@Cenario27
@Manual
@PropostaElaboracao
Esquema do Cenario: Editar Acés/Desc. SERVIÇO na Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
E esteja com <Servico> 
Quando clicar na "Seta" 
E clicar "Editar"
E preencher os dados 
E clicar "Salvar"
Entao salva edição do serviço
E apresenta <MensagemServico>

Exemplos:
| Proposta | Servico    | MensagemServico |
| 5967-01  | Ajudante 3 | -               |



@Cenario28
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Excluir Acés/Desc. SERVIÇO na Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E esteja na aba "Produtos/Serviços"
E esteja com <Servico> 
Quando clicar na "Seta" 
E clicar "Excluir"
E clicar "Sim"
Entao salva edição patrimônio
E apresenta <MensagemServico>

Exemplos:
| Proposta | Servico    | MensagemServico |
| 5967-01  | Ajudante 3 | -               |



@Cenario29
@Automatizar
@Proposta
Esquema do Cenario: Editar detalhes da Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Editar Detalhes"
E preenhcer os dados 
E clicar "Salvar"
Entao salva edição dos detalhes
E apresenta <MensagemDetalhes>

Exemplos:
| Proposta | MensagemDetalhes |
| 5967-01  | -                |
 


@Cenario30
@Automatizar
@Proposta
Esquema do Cenario:  Alterar vencimento da Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Alterar Vencimento"
E preenhcer os dados 
E clicar "Salvar"
Entao salva data de venciemento 
E apresenta <MensagemVencimento>

Exemplos:
| Proposta | MensagemServico |
| 5967-01  | -               |



@Cenario31
@Manual
@Proposta
Esquema do Cenario: Adicionar Contatos na Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Contato"
Quando clicar "+ Contato"
E clicar em Contato
E clicar "+ Novo Contato"
E preencher os dados 
E clicar "Salvar"
E clicar "Adicionar"
Entao grava contato  
E apresenta <MensagemVencimento>

Exemplos:
| Proposta | MensagemServico |
| 5967-01  | -               |



@Cenario32
@Automatizar
@Proposta
Esquema do Cenario: Excluir Contato na Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Contato"
E tenha contatos adicionais 
Quando clicar "Excluir"
E clicar "Sim"
Entao exclui contato  
E apresenta <MensagemExclusaoContato>

Exemplos:
| Proposta | MensagemExclusaoContato |
| 5967-01  | -                       |



@Cenario33
@Manual
@Proposta 
Esquema do Cenario: Alterar Fotos da Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Fotos"
Quando clicar "Carregar Imagem"
E selecionar imagem
E clicar "Sim"
Entao grava imagem 
E apresenta <MensagemImagem>

Exemplos:
| Proposta | MensagemExclusaoContato       |
| 5967-01  | Imagem adicionada com sucesso |



@Cenario34
@Manual
@Proposta 
Esquema do Cenario: Remover imagem da Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Fotos"
Quando clicar "Remover Imagem"
E selecionar imagem
E clicar "Sim"
Entao remove imagem 
E apresenta <MensagemImagem>

Exemplos:
| Proposta | MensagemExclusaoContato       |
| 5967-01  | Imagem removida com sucesso   |



@Cenario35
@Automatizar
@Proposta 
Esquema do Cenario: Anexar arquivo na Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Anexos"
Quando clicar "Anexar Arquivos"
E clicar "Anexar Arquivos"
E clicar "Salvar"
Entao remove imagem 
E apresenta <MensagemArquivos>

Exemplos:
| Proposta | MensagemArquivos                |
| 5967-01  | Arquivo(S) salvo(s) com sucesso |



@Cenario36
@Automatizar
@Proposta 
Esquema do Cenario: Editar arquivo da Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Anexos"
E esteja com anexo
Quando clicar "Seta"
E clicar "Editar"
E preencher os dados
E clicar "Salvar"
Entao remove imagem 
E apresenta <MensagemEdArquivos>

Exemplos:
| Proposta | MensagemArquivos                    |
| 5967-01  | Arquivo(s) editado(s) com sucesso ! |



@Cenario37
@Automatizar
@Proposta 
Esquema do Cenario: Excluir arquivo da Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Anexos"
E esteja com anexo
Quando clicar "Seta"
E clicar "Excluir"
E clicar "Sim"
Entao remove arquivo
E apresenta <MensagemRemocaoArquivos>

Exemplos:
| Proposta | MensagemRemocaoArquivos |
| 5967-01  | -                       |



@Cenario38
@Manual
@Proposta 
Esquema do Cenario: Campos customizados da Proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
Quando clicar na <Proposta>
E clicar na aba "Campos customizados"
E preencher os dados 
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemCamposCustomizados>

Exemplos:
| Proposta | MensagemCamposCustomizados |
| 5967-01  | Campos salvos com sucesso  |



@Cenario39
@Manual
@PropostaNegociacao 
Esquema do Cenario: Adicionar atividade aprovação da Proposta
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja em negociação
Quando clicar "+ Atividade"
E preencher os dados 
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemAtividade>

Exemplos:
| Proposta | MensagemAtividade |
| 5967-01  | -                 |



@Cenario40
@Manual
@PropostaNegociacao
Esquema do Cenario: Adicionar nota de aprovação da Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja em negociação
Quando clicar "+ Atividade"
E preencher os dados 
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemNota>

Exemplos:
| Proposta | MensagemNota |
| 5967-01  | -            |



@Cenario41
@Automatizar
@PropostaNegociacao
Esquema do Cenario: Estornar Elaboração da Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja em negociação
Quando clicar "Estornar Elaboração"
E clicar "Sim"
Entao estorna elaboração
E apresenta <MensagemAtividade>

Exemplos:
| Proposta | MensagemEstorno |
| 5967-01  | -               |



@Cenario42
@Automatizar
@PropostaNegociacao
Esquema do Cenario: Revisar Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja em negociação
Quando clicar "Revisar Proposta"
E clicar "Sim"
Entao grava os dados
E apresenta <MensagemRevisao>

Exemplos:
| Proposta | MensagemRevisao                  |
| 5967-01  | Nova revisão gerada com sucesso. |



@Cenario43
@Automatizar
@PropostaNegociacao
Esquema do Cenario: Proposta perdida 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja em negociação
Quando clicar "Revisar Proposta"
E clicar "Sim"
Entao grava revisão
E retorna para elaboração 
E apresenta <MensagemRevisao>

Exemplos:
| Proposta | MensagemRevisao                  |
| 5967-01  | Nova revisão gerada com sucesso. |



@Cenario44
@Manual
@PropostaNegociacao
Esquema do Cenario: Aprovar Proposta criando novo contrato
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E esteja logado no Sisloc com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja em negociação
Quando clicar "Aprovar Proposta"
E clicar na "Remessa"
E preencher os dados 
E marcar "Criar um novo contrato"
E clicar "Aprovar Proposta"
E clicar "Confirmar"
Entao grava os dados 
E grava remessa na ficha de locação do cliente no Sisloc  
E apresenta <MensagemAprovacao>

Exemplos:
| Proposta | MensagemAprovacao                                                            |
| 5769-02  | Proposta Oportunidade aqs aprovada com sucesso! Clique em Ok para prosseguir |



@Cenario45
@Manual
@PropostaNegociacao
Esquema do Cenario: Aprovar Proposta selecionando contrato existente
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E esteja logado no Sisloc com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja em negociação
Quando clicar "Aprovar Proposta"
E clicar na "Remessa"
E preencher os dados 
E clicar aba "Selecionar Contrato Existente"
E selecionar <Remessa>
E clicar "Aprovar Proposta"
E clicar "Confirmar"
Entao grava os dados 
E grava remessa na ficha de locação do cliente no Sisloc  
E apresenta <MensagemAprovacao>

Exemplos:
| Proposta | Remessa | MensagemAprovacao                                                            |
| 5769-02  | 4920    | Proposta Oportunidade aqs aprovada com sucesso! Clique em Ok para prosseguir |



@Cenario46
@Manual
@PropostaNegociacao
Esquema do Cenario: Estornar aprovação da Proposta com remessa no Sisloc 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E esteja logado no Sisloc com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja aprovada
E tenha remessa no Sisloc 
Quando clicar "Estornar Aprovação"
E clicar "Sim"
Entao apresenta <MensagemAprovacao>

Exemplos:
| Proposta | MensagemAprovacao                                                             |
| 5769-02  | Proposta não pode ser estornada, pois existe remessa vinculada no SISLOC.     |



@Cenario47
@Manual
@PropostaNegociacao
Esquema do Cenario: Estornar aprovação da Proposta sem remessa no Sisloc 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E esteja logado no Sisloc com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja aprovada
E não tenha remessa no Sisloc 
Quando clicar "Estornar Aprovação"
E clicar "Sim"
Entao estorna Proposta para negociação 
E apresenta <MensagemAprovacao>

Exemplos:
| Proposta | MensagemAprovacao |
| 5769-02  | -                 |



@Cenario48
@Manual
@Proposta
Cenario: Visualizar conta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Visualizar Conta"
Entao abre tela da conta 

Exemplos:
| Proposta |
| 5769-02  |



@Cenario49
@Manual
@Proposta
Cenario: Visualizar origem 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Visualizar Origem"
Entao abre tela do cadastro da origem

Exemplos:
| Proposta |
| 5769-02  |



@Cenario50
@Manual
@Proposta
Cenario: Visualizar vendedor 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Visualizar Vendedor"
Entao abre tela do cadastro do vendedor 

Exemplos:
| Proposta |
| 5769-02  |



@Cenario51
@Manual
@Proposta
Cenario: Visualizar oportunidade 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Visualizar Origem"
Entao abre tela do cadastro de origem

Exemplos:
| Proposta |
| 5769-02  |



@Cenario52
@Manual
@Proposta
Cenario: Visualizar segmento 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Visualizar Segmento"
Entao abre tela do cadastro de segmento

Exemplos:
| Proposta |
| 5769-02  |



@Cenario53
@Manual
@Proposta
Esquema do Cenario: Visualizar Captador
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Visualizar Captador"
Entao abre tela do cadastro de captador 

Exemplos:
| Proposta |
| 5769-02  |



@Cenario54
@Manual
@Proposta
Esquema do Cenario: Alterar tipo de proposta  
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Tipo de proposta"
E altar os dados 
E clicar "Alterar"
Entao grava os dados 
E apresenta <MensagemTipo>

Exemplos:
| Proposta | MensagemTipo                   |
| 5769-02  | Proposta alterada com sucesso! |



@Cenario55
@Manual
@Proposta
Esquema do Cenario: Alterar preço base 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Alterar Preço Base"
E altar os dados 
E clicar "Alterar"
Entao grava os dados 
E apresenta <MensagemTipo>

Exemplos:
| Proposta | MensagemTipo                     |
| 5769-02  | Preço base alterado com sucesso! |



@Cenario56
@Manual
@Proposta
Esquema do Cenario: Alterar tipo de locação 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Alterar Tipo de Locação"
E altar os dados 
E clicar "Alterar"
E clicar "Sim"
Entao grava os dados 
E apresenta <MensagemTipo>

Exemplos:
| Proposta | MensagemTipo                          |
| 5769-02  | Tipo de locação alterado com sucesso! |



@Cenario57
@Manual
@Proposta
Esquema do Cenario: Visualizar tipo de locação 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Visualizar Tipo de Locação"
Entao exibe cadastro de tipo de locação

Exemplos:
| Proposta |
| 5769-02  |



@Cenario58
@Manual
@Proposta
Esquema do Cenario: Alterar tabela de preço locação 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Alterar Tipo de Locação"
E altar os dados 
E clicar "Alterar"
E clicar "Sim"
Entao grava os dados 
E apresenta <MensagemTipo>

Exemplos:
| Proposta | MensagemTipo                          |
| 5769-02  | Tipo de locação alterado com sucesso! |



@Cenario59
@Manual
@Proposta
Esquema do Cenario: Visualizar tabela de preço locação 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
E esteja na aba "Detalhes"
Quando clicar "Visualizar Tipo de Locação"
Entao exibe cadastro de Tabela de Preço  

Exemplos:
| Proposta | 
| 5769-02  | 


@Cenario60
@Automatizar
@Proposta
Cenario: Pesquisar uma proposta
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando inserir pesquisa
E clicar na "Lupa"
Entao exibe dados pesquisados



@Cenario61
@Manual
@Proposta
Esquema do Cenario: Imrpimir documento 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
Quando clicar "Imprimir documento"
E selecionar "Documento"
E clicar "Imprimir"
Entao exibe documento 

Exemplos:
| Proposta | 
| 5769-02  | 



@Cenario62
@Manual
@Proposta
Esquema do Cenario: Imrpimir Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
Quando clicar "Imprimir Proposta"
E selecionar "Documento"
E clicar "Imprimir"
Entao exibe documento 

Exemplos:
| Proposta | 
| 5769-02  | 



@Cenario63
@Automatizar
@Proposta
Esquema do Cenario: Enviar email da  Proposta
Dado que esteja logado no Força de Vendas Web com usuário funcionário 
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
Quando clicar "Enviar email"
E preencher os dados 
E clicar "Enviar"
Entao envia email 

Exemplos:
| Proposta | 
| 5769-02  | 



@Cenario64
@Automatizar
@Proposta
Esquema do Cenario: Enviar whatsapp  da  Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E selecionar <Proposta>
Quando clicar "Enviar whatsapp"
E preencher os dados 
E clicar "Enviar"
Entao envia mensagem whatsapp

Exemplos:
| Proposta | 
| 5769-02  | 



@Cenario65
@Automatizar
@Proposta
Cenario: Atualizar listagem de Proposta 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar "Limpar resultados"
Entao limpa listagem de proposta 



@Cenario54
@Automatizar
@Proposta
Cenario: Filtrar Proposta
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar "Filtros"
E preencher os campos 
E clicar "Filtrar"
Entao exibe dados filtrados  



@Cenario66
@Automatizar
@Proposta
Cenario: Exportar para excel as propostas filtradas
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar em "Exportação Excel"
E selecionar os campos 
E clicar "Exportar Excel"
Entao exporta as propostas para excel 



@Cenario67
@Automatizar
@Proposta
Cenario: Auditoria das Propostas 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar em "Auditoria Proposta"
E clicar em "Ação"
Entao exibe registro de exclusão da Proposta



@Cenario68
@Automatizar
@Proposta
Cenario: Visualizar total
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar em "Visualizar total"
Entao exibe valor total das propostas 



@Cenario69
@Automatizar
@Proposta
Esquema do Cenario: Editar status de email 
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar em "Controle de email" na <Proposta>
E clicar "Status"
E clicar "Confirmar Edição"
Entao grava os dados
E grava <Status> 
E exibe <MensagemEmail>

Exemplos:
| Proposta | Status         | MensagemEmail                           |
| 5769-02  | Falha no envio | Lista de emails atualizada com sucesso! |



@Cenario70
@Automatizar
@Proposta
Esquema do Cenario: Excluir lista de email
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar em "Controle de email" na <Proposta>
E clicar "Excluir"
E selecionar o email
E clicar "Confirmar Deleção"
Entao grava os dados
E exibe <MensagemExclusaoEmail>

Exemplos:
| Proposta | Status         | MensagemExclusaoEmail                   |
| 5769-02  | Falha no envio | Lista de emails atualizada com sucesso! |



@Cenario71
@Automatizar
@Proposta
Esquema do Cenario: Imprimir documento pela listagem
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar na "Seta" na <Proposta>
E clicar "Imprimir Documento"
E selecionar "Documento"
E clicar "Imprimir"
Entao exibe documento 

Exemplos:
| Proposta  |
| 005967-02 |



@Cenario72
@Automatizar
@Proposta
Esquema do Cenario: Imprimir documento pela listagem
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar na "Seta" na <Proposta>
E clicar "Imprimir Documento"
E selecionar "Documento"
E clicar "Imprimir"
Entao exibe documento 

Exemplos:
| Proposta  |
| 005967-02 |



@Cenario73
@Automatizar
@Proposta
Esquema do Cenario: Imprimir proposta pela listagem
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar na "Seta" na <Proposta>
E clicar "Imprimir Proposta"
E selecionar "Documento"
E clicar "Imprimir"
Entao exibe documento 

Exemplos:
| Proposta  |
| 005967-02 |



@Cenario74
@Automatizar
@Proposta
Esquema do Cenario: Enviar email pela listagem
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar na "Seta" na <Proposta>
E clicar "Enviar email"
E preencher os dados 
E clicar "Enviar"
Entao envia email 

Exemplos:
| Proposta  |
| 005967-02 |



@Cenario75
@Automatizar
@Proposta
Esquema do Cenario: Excluir proposta pela listagem
Dado que esteja logado no Força de Vendas Web com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta" 
Quando clicar na "Seta" na <Proposta>
E clicar "Excluir"
E clicar "Sim"
Entao exclui Proposta 

Exemplos:
| Proposta  |
| 000602-01 |
