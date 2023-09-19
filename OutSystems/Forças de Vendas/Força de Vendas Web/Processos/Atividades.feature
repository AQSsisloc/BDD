#language: pt
#Atividades
#ForcaDeVendasWeb


Funcionalidade: Cadastrar uma atividade a ser executada por um responsável
  Como um usuário do Força de Vendas 
  Eu quero cadastrar uma atividade
  Para utilizar nos processos de vendas


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Cadastrar uma atividade do tipo "Prospecção" 
E que esteja logado com usuário funcionário
E selecionar "Processos"
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
| Prospeccao       | MensagemDeSucesso            |
| Alessandra Kruse | Atividade salva com sucesso! |



@Cenario2
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Cadastrar uma atividade do tipo "Prospecção" sem preencher campo obrigatório
E que esteja logado com usuário funcionário
E selecionar "Processos"
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
E selecionar "Processos"
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
| Prospeccao       |
| Alessandra Kruse |



@Cenario4
@Automatizar
@AtividadeConta
Esquema do Cenario: Cadastrar uma atividade do tipo "Conta" 
E que esteja logado com usuário funcionário
E selecionar "Processos"
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
| Conta                                          | MensagemDeSucesso            |
| BHJA TRANSPORTES MUDANCAS E SERVICOS LTDA - ME | Atividade salva com sucesso! |



@Cenario5
@Automatizar
@AtividadeConta
Esquema do Cenario: Cadastrar uma atividade do tipo "Conta" sem preencher campo obrigatório
E que esteja logado com usuário funcionário
E selecionar "Processos"
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
E selecionar "Processos"
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
| Conta                                          |
| BHJA TRANSPORTES MUDANCAS E SERVICOS LTDA - ME |



@Cenario7
@Automatizar
@AtividadeOportunidade
Esquema do Cenario: Cadastrar uma atividade do tipo "Oportunidade" 
E que esteja logado com usuário funcionário
E selecionar "Processos"
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
| Oportunidade                                               | MensagemDeSucesso            |
| Op Antonio pedrosa / ANTONIO PEDROSA DAMASCENO 24689514844 | Atividade salva com sucesso! |



@Cenario8
@Automatizar
@AtividadeOportunidade
Esquema do Cenario: Cadastrar uma atividade do tipo "Oportunidade" sem preencher campo obrigatório
E que esteja logado com usuário funcionário
E selecionar "Processos"
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
E selecionar "Processos"
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
| Oportunidade                                               |
| Op Antonio pedrosa / ANTONIO PEDROSA DAMASCENO 24689514844 |



@Cenario10
@Automatizar
@AtividadeProposta
Esquema do Cenario: Cadastrar uma atividade do tipo "Proposta" 
E que esteja logado com usuário funcionário
E selecionar "Processos"
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
| Proposta                                                       | MensagemDeSucesso            |
| 14 - 1 , Construtora Floresta Ltda / Construtora Floresta Ltda | Atividade salva com sucesso! |



@Cenario11
@Automatizar
@AtividadeProposta
Esquema do Cenario: Cadastrar uma atividade do tipo "Oportunidade" sem preencher campo obrigatório
E que esteja logado com usuário funcionário
E selecionar "Processos"
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
E selecionar "Processos"
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
| Proposta                                                       |
| 14 - 1 , Construtora Floresta Ltda / Construtora Floresta Ltda |



@Cenario13
@Automatizar
@EditarAtividade
Esquema do Cenario: Editar uma atividade de acordo com o "Tipo"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao não grava os dados

Exemplos:
| Pesquisa                                                       | Atividade       |
| Alessandra Kruse                                               | Skype           |
| BHJA TRANSPORTES MUDANCAS E SERVICOS LTDA - ME                 | Agendar Visita  |
| Loccel Ltda /  Loccel Ltda                                     | Enviar Proposta |
| 14 - 1 , Construtora Floresta Ltda / Construtora Floresta Ltda | Enviar E-mail   |



@Cenario14
@Automatizar
@CancelarAtividade
Esquema do Cenario: Cancelar uma atividade de acordo com o "Tipo"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Cancelar"
E clicar em "Sim"
Entao cancela os dados

Exemplos:
| Pesquisa                                                       | Atividade       |
| Alessandra Kruse                                               | Skype           |
| BHJA TRANSPORTES MUDANCAS E SERVICOS LTDA - ME                 | Agendar Visita  |
| Loccel Ltda /  Loccel Ltda                                     | Enviar Proposta |
| 14 - 1 , Construtora Floresta Ltda / Construtora Floresta Ltda | Enviar E-mail   |



@Cenario15
@Automatizar
@EstornarCancelamentoAtividade
Esquema do Cenario: Estornar o cancelamento de uma atividade 
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "Filtro"
E inserir <Status>
E inserir <Atividades>
E clicar em "Filtrar"
E clicar em <Atividade>
E clicar em "Estornar"
E clicar em "Sim"
Entao estorna o cancelamento dos dados

Exemplos:
| Pesquisa                                                       | Atividades      | Atividade       |
| Alessandra Kruse                                               | Skype           | Skype           |
| BHJA TRANSPORTES MUDANCAS E SERVICOS LTDA - ME                 | Agendar Visita  | Agendar Visita  |
| Loccel Ltda /  Loccel Ltda                                     | Enviar Proposta | Enviar Proposta |
| 14 - 1 , Construtora Floresta Ltda / Construtora Floresta Ltda | Enviar E-mail   | Enviar E-mail   |



@Cenario16
@Automatizar
@ExcluirAtividade
Esquema do Cenario: Excluir uma atividade de acordo com o "Tipo"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Cancelar"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa                  | Atividade       | MensagemDeRetorno               |
| Alessandra Kruse          | Skype           | Atividade excluída com sucesso! |
| BHJA TRANSPORTES          | Agendar Visita  | Atividade excluída com sucesso! |
| Loccel Ltda               | Enviar Proposta | Atividade excluída com sucesso! |
| Construtora Floresta Ltda | Enviar E-mail   | Atividade excluída com sucesso! |



@Cenario17
@Automatizar
@ConcluirAtividade
Esquema do Cenario: Concluir uma atividade de acordo com o "Tipo"
E que esteja logado com usuário funcionário
E selecionar "Processos"
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
| Pesquisa         | Atividade        | Observacao                   | MensagemDeRetorno                |
| Visita Comercial | Visita Comercial | Atividade concluida pela AQS | Atividade concluída com sucesso! |
| Agendar Visita   | Agendar Visita   | Atividade concluida pela AQS | Atividade concluída com sucesso! |
| Enviar Proposta  | Enviar Proposta  | Atividade concluida pela AQS | Atividade concluída com sucesso! |
| Enviar E-mail    | Enviar E-mail    | Atividade concluida pela AQS | Atividade concluída com sucesso! |



@Cenario18
@Automatizar
@ConcluirECadastrarAtividade
Esquema do Cenario: Concluir a atividade e cadastrar uma nova atividade 
E que esteja logado com usuário funcionário
E selecionar "Processos"
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
| Pesquisa         | Atividade        | Observacao                   | MensagemDeRetorno                |
| Visita Comercial | Visita Comercial | Atividade concluida pela AQS | Atividade concluída com sucesso! |
| Agendar Visita   | Agendar Visita   | Atividade concluida pela AQS | Atividade concluída com sucesso! |
| Enviar Proposta  | Enviar Proposta  | Atividade concluida pela AQS | Atividade concluída com sucesso! |
| Enviar E-mail    | Enviar E-mail    | Atividade concluida pela AQS | Atividade concluída com sucesso! |



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
| Status    | Atividade        |
| Concluído | Visita Comercial |
| Concluído | Agendar Visita   |
| Concluído | Enviar Proposta  |
| Concluído | Enviar E-mail    |



@Cenario20
@Automatizar
@PesquisarAtividade
Cenario: Pesquisar uma atividade criada
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "Pesquisar"
Entao apresenta todas as atividades criadas



@Cenario21
@Automatizar
@LimparPesquisaAtividade
Cenario: Limpar os resultados de uma pesquisa da atividade
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "Limpar os resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario22
@Automatizar
@FiltrarAtividade
Cenario: Filtrar atividade criada
E que esteja logado com usuário funcionário
E selecionar "Processos"
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
E selecionar "Processos"
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


