#language: pt
#AtividadeServices
#ServicesWeb


Funcionalidade: Gerenciar atividades 
  Como um usuário do Services Web 
  Eu quero gerenciar as atividades dos processos 
  Para ter controle do fluxo dos processos 


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Cadastrar uma atividade do tipo "Prospecção" 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Prospecção"
E inserir <Prospeccao>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Prospeccao | MensagemDeSucesso                            |
| teste a    | Atividade teste aqs teste salva com sucesso! |



@Cenario2
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Cadastrar uma atividade do tipo "Prospecção" sem preencher campo obrigatório
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Prospecção"
E clicar em "Continuar"
Entao não grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| MensagemDeRetorno                      |
| Obrigatório selecionar uma prospecção! |



@Cenario3
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Cancelar o cadastro de uma atividade do tipo "Prospecção"
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



@Cenario4
@Automatizar
@AtividadeConta
Esquema do Cenario: Cadastrar uma atividade do tipo "Conta" 
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



@Cenario5
@Automatizar
@AtividadeConta
Esquema do Cenario: Cadastrar uma atividade do tipo "Conta" sem preencher campo obrigatório
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



@Cenario6
@Automatizar
@AtividadeConta
Esquema do Cenario: Cancelar o cadastro de uma atividade do tipo "Conta"
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



@Cenario7
@Automatizar
@AtividadeOportunidade
Esquema do Cenario: Cadastrar uma atividade do tipo "Oportunidade" 
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



@Cenario8
@Automatizar
@AtividadeOportunidade
Esquema do Cenario: Cadastrar uma atividade do tipo "Oportunidade" sem preencher campo obrigatório
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



@Cenario9
@Automatizar
@AtividadeOportunidade
Esquema do Cenario: Cancelar o cadastro de uma atividade do tipo "Oportunidade"
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



@Cenario10
@Automatizar
@AtividadeProposta
Esquema do Cenario: Cadastrar uma atividade do tipo "Proposta" 
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



@Cenario11
@Automatizar
@AtividadeProposta
Esquema do Cenario: Cadastrar uma atividade do tipo "Oportunidade" sem preencher campo obrigatório
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



@Cenario12
@Automatizar
@AtividadeProposta
Esquema do Cenario: Cancelar o cadastro de uma atividade do tipo "Proposta"
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



@Cenario13
@Automatizar
@EditarAtividade
Esquema do Cenario: Editar uma atividade de acordo com o "Tipo"
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



@Cenario14
@Automatizar
@CancelarAtividade
Esquema do Cenario: Cancelar uma atividade de acordo com o "Tipo"
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Cancelar"
E clicar em "Sim"
Entao cancela os dados

Exemplos:
| Pesquisa | Atividade | 
| aqs      | aqs teste | 



@Cenario15
@Automatizar
@EstornarCancelamentoAtividade
Esquema do Cenario: Estornar o cancelamento de uma atividade 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Filtro"
E inserir <Status>
E inserir <Atividade>
E clicar em "Filtrar"
E clicar em <Atividade2>
E clicar em "Estornar"
E clicar em "Sim"
Entao estorna o cancelamento dos dados

Exemplos:
| Status    | Atividade | Atividade2 |
| Cancelado | aqs teste | aqs teste  |



@Cenario16
@Automatizar
@ExcluirAtividade
Esquema do Cenario: Excluir uma atividade de acordo com o "Tipo"
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Cancelar"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa | Atividade | MensagemDeRetorno               |
| aqs      | aqs teste | Atividade excluída com sucesso! |



@Cenario17
@Automatizar
@ConcluirAtividade
Esquema do Cenario: Concluir uma atividade de acordo com o "Tipo"
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Concluir"
E inserir <Observacao>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa | Atividade | Observacao | MensagemDeRetorno                |
| aqs      | aqs teste | teste      | Atividade concluída com sucesso! |



@Cenario18
@Automatizar
@ConcluirECadastrarAtividade
Esquema do Cenario: Concluir a atividade e cadastrar uma nova atividade 
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Concluir"
E inserir <Observacao>
E clicar em "Salvar e Continuar"
Entao grava os dados
E apresenta a "+Atividade"

Exemplos:
| Pesquisa | Atividade | Observacao | MensagemDeRetorno                |
| aqs      | aqs teste | teste      | Atividade concluída com sucesso! |



@Cenario19
@Automatizar
@EstornarConclusaoAtividade
Esquema do Cenario: Estornar a conclusão de uma atividade
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "Filtro"
E inserir <Status>
E clicar em "Filtrar"
E clicar em <Atividade>
E clicar em "Estornar"
E clicar em "Sim"
Entao estorna a conclusão dos dados

Exemplos:
| Status    | Atividade |
| Concluído | aqs teste |



@Cenario20
@Automatizar
@PesquisarAtividade
Cenario: Pesquisar uma atividade criada
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Pesquisar"
Entao apresenta todas as atividades criadas



@Cenario21
@Automatizar
@LimparPesquisaAtividade
Cenario: Limpar os resultados de uma pesquisa da atividade
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Limpar os resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario22
@Automatizar
@FiltrarAtividade
Cenario: Filtrar atividade criada
E que esteja logado com usuário funcionário
E selecionar "Atividades"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta a atividade do filtro pesquisado



@Cenario23
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


