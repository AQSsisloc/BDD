#language: pt
#Proposta
#ForcaDeVendasWeb


Funcionalidade: Gerenciar Propostas 
  Como um usuário do Forca de Vendas Web 
  Eu quero gerenciar as propostas de venda ou locação
  Para ter controle da situação dos equipamentos 


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Concluir elaboração de Proposta
E que esteja logado com usuário funcionário
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
E que esteja logado com usuário funcionário
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
E que esteja logado com usuário funcionário
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
| Empresa     | MensagemEmpresa              |
| BH LOCADORA | Empresa alterada com sucesso |



@Cenario4
@Automatizar
@Proposta
Esquema do Cenario: Criar atividade de elaboração na Proposta 
E que esteja logado com usuário funcionário
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
E que esteja logado com usuário funcionário
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
E que esteja logado com usuário funcionário
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
E que esteja logado com usuário funcionário
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
@Automatizar
@Proposta
Esquema do Cenario: Adicionar nota na Proposta
E que esteja logado com usuário funcionário
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
E que esteja logado com usuário funcionário
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
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Inserir Projeto Integrado CAD na Proposta 
Dado que esteja logado ao Sisloc com usuário funcionário 
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Proposta"
E <Proposta> esteja com status "Em Elaboração"
E tenha projetos integrados CAD cadastrados  
Quando clicar em "+ Projeto Integrado CAD"
E inserir <ProjetoCAD>
E preencher o campo 
E clicar "Incluir"
Entao grava os dados
E apresenta <MensagemAtividade>

Exemplos:
| Proposta | MensagemAtividade |
| 5769-01  | -                 |



@Cenario11
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Inserir acréssimo ou desconto no produto da Proposta 
E que esteja logado com usuário funcionário
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



@Cenario12
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Alterar data da Remessa Da Proposta 
E que esteja logado com usuário funcionário
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



@Cenario13
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Adicionar composição na Proposta  
E que esteja logado com usuário funcionário
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



@Cenario14
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Adicionar produto na Proposta  
E que esteja logado com usuário funcionário
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



@Cenario15
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Adicionar vários produtos na Proposta  
E que esteja logado com usuário funcionário
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



@Cenario16
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Editar produto da Proposta  
E que esteja logado com usuário funcionário
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



@Cenario17
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Excluir produto da Proposta  
E que esteja logado com usuário funcionário
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




@Cenario18
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Criar Parâmetro de Apontamento no produto da Proposta  
E que esteja logado com usuário funcionário
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



@Cenario19
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Visualizar patrimônio referência do produto da Proposta  
E que esteja logado com usuário funcionário
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



@Cenario20
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Adicionar serviço na Proposta 
E que esteja logado com usuário funcionário
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




@Cenario21
@Automatizar
@PropostaElaboracao
Esquema do Cenario: Adicionar vários serviços na Proposta 
E que esteja logado com usuário funcionário
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



@Cenario22
@Automatizar
@Proposta
Esquema do Cenario: Editar detalhes da Proposta 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Prospecção"
E inserir <Prospeccao>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Prospeccao |
| teste a    |



@Cenario23
@Automatizar
@Proposta
Esquema do Cenario:  Alterar vencimento da Proposta 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Conta"
E inserir <Conta>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Conta             | MensagemDeSucesso                            |
| ADALGISA C FLORES | Atividade teste aqs teste salva com sucesso! |



@Cenario24
@Automatizar
@Proposta
Esquema do Cenario: Alterar Contatos da Proposta 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Conta"
E clicar em "Continuar"
Entao não grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| MensagemDeRetorno                 |
| Obrigatório selecionar uma conta! |



@Cenario25
@Automatizar
@Proposta 
Esquema do Cenario: Alterar Fotos da Proposta 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Conta"
E inserir <Conta>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Conta             |
| ADALGISA C FLORES |



@Cenario26
@Automatizar
@Proposta 
Esquema do Cenario: Anexar arquivo na Proposta  
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Oportunidade"
E inserir <Oportunidade>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Oportunidade        | MensagemDeSucesso                            |
| aqs teste/001 teste | Atividade teste aqs teste salva com sucesso! |



@Cenario27
@Automatizar
@Proposta 
Esquema do Cenario: Adicionar atividade aprovação da Proposta
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Oportunidade"
E clicar em "Continuar"
Entao não grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| MensagemDeSucesso                        |
| Obrigatório selecionar uma Oportunidade! |



@Cenario28
@Automatizar
@AtividadeOportunidade
Esquema do Cenario: Adicionar nota de aprovação da Proposta 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Oportunidade"
E inserir <Oportunidade>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Oportunidade        |
| aqs teste/001 teste |



@Cenario29
@Automatizar
@AtividadeProposta
Esquema do Cenario: Estornar Elaboração da Proposta 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Proposta"
E inserir <Proposta>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Proposta                                                | MensagemDeSucesso                            |
| 15685 - 1 , "jurema construcoes" / "jurema construcoes" | Atividade teste aqs teste salva com sucesso! |



@Cenario30
@Automatizar
@AtividadeProposta
Esquema do Cenario: Revisar  Proposta 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Proposta"
E clicar em "Continuar"
Entao não grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| MensagemDeRetorno                    |
| Obrigatório selecionar uma Proposta! |



@Cenario31
@Automatizar
@AtividadeProposta
Esquema do Cenario: Proposta perdida 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Proposta"
E inserir <Proposta>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Proposta                                                |
| 15685 - 1 , "jurema construcoes" / "jurema construcoes" |



@Cenario32
@Automatizar
@EditarAtividade
Esquema do Cenario: Aprovar Proposta 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa | Atividade | MensagemDeRetorno                            |
| aqs      | aqs teste | Atividade teste aqs teste salva com sucesso! |



@Cenario33
@Automatizar
@PesquisarAtividade
Cenario: Pesquisar uma atividade criada
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Pesquisar"
Entao apresenta todas as atividades criadas



@Cenario34
@Automatizar
@PropostaNegociacao
Cenario: Imrpimir documento 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Limpar os resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario35
@Automatizar
@PropostaNegociacao
Cenario: Imrpimir Proposta 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Limpar os resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario36
@Automatizar
@PropostaNegociacao
Cenario: Enviar email da  Proposta 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Limpar os resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario37
@Automatizar
@PropostaNegociacao
Cenario: Enviar whatsapp  da  Proposta 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Limpar os resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario38
@Automatizar
@LimparPesquisaAtividade
Cenario: Limpar os resultados de uma pesquisa da atividade
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Limpar os resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario39
@Automatizar
@FiltrarAtividade
Cenario: Filtrar atividade criada
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta a atividade do filtro pesquisado



@Cenario40
@Automatizar
@ExportarDadosDeAtividades
Esquema do Cenario: Exportar para excel as atividades filtradas
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Filtro"
E inserir <Status>
E clicar em "Filtrar"
E clicar em "Arquivo Excel"
E clicar em "Exportar Arquivos"
Entao exporta para excel as atividades filtradas

Exemplos:
| Status                                       |
| Cancelado, Concluído, Em Andamento, Pendente |


