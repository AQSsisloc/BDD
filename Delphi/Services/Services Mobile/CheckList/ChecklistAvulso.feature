#language: pt
#ChecklistAvulso
#ServicesMobile


Funcionalidade: Cadastrar um checklist avulso para um patrimônio
  Como um usuário do Services Mobile 
  Eu quero cadastrar um checklist avulso
  Para utilizar na conferência esporádica do equipamento


Dado esteja logado no Services Mobile


@Cenario1
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Cadastrar um checklist avulso para o patrimônio
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Voltar"
Entao grava os dados

Exemplos:
| Empresa | Patrimonio |
| MATRIZ  | 3193       |



@Cenario2
@Manual
@ChecklistAvulso
Esquema do Cenario: Cadastrar um checklist avulso para o patrimônio da leitura BarCode
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Mais"
E selecionar "BarCode"
E realizar a leitura do código de barras
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Voltar"
Entao grava os dados

Exemplos:
| Empresa | Patrimonio |
| MATRIZ  | 3193       |



@Cenario3
@Manual
@ChecklistAvulso
Esquema do Cenario: Cadastrar um checklist avulso para o patrimônio da leitura QrCode
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Mais"
E selecionar "QrCode"
E realizar a leitura do código de barras
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Voltar"
Entao grava os dados

Exemplos:
| Empresa | Patrimonio |
| MATRIZ  | 3193       |



@Cenario4
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Cadastrar um checklist avulso e definir responsável
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Raio"
E inserir <Responsavel>
E clicar em "Salvar"
Entao grava os dados no checklist

Exemplos:
| Empresa | Patrimonio | Responsavel |
| MATRIZ  | 3193       | Admin       |



@Cenario5
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Executar um checklist avulso para o patrimônio
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E clicar em "Executar"
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Patrimonio | MensagemDeSucesso   |
| MATRIZ  | 3193       | Processo concluído! |



@Cenario6
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Excluir um checklist avulso de um patrimônio
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E clicar em "Raio"
E clicar em "Excluir"
E clicar em "Excluir"
Entao exclui os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Patrimonio | MensagemDeSucesso   |
| MATRIZ  | 3193       | Processo concluído! |



@Cenario7
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Excluir um checklist avulso de um patrimônio sem responsável
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E clicar em "Raio"
E clicar em "Excluir"
E clicar em "Excluir"
Entao apresenta a <MensagemDeRetorno>
E não exclui os dados

Exemplos:
| Empresa | Patrimonio | MensagemDeRetorno                                                                         |
| MATRIZ  | 8062       | Apenas o usuário definido como responsável por esse registro pode realizar esta operação! |



@Cenario8
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Visualizar fila de sicronização de um checklist avulso
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E clicar em "Raio"
E clicar em "Ver Fila de Sicronização"
Entao apresenta os itens para sicronização

Exemplos:
| Empresa | Patrimonio |
| MATRIZ  | 3193       |



@Cenario9
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Pesquisar checklists avulsos atuais
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E selecionar aba "Atuais"
E clicar em "Lupa"
Entao apresenta os checklists atuais

Exemplos:
| Empresa |
| MATRIZ  |



@Cenario10
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Pesquisar checklists avulsos atrasados
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E selecionar aba "Atrasados"
E clicar em "Lupa"
Entao apresenta os checklists atrasados

Exemplos:
| Empresa |
| MATRIZ  |



@Cenario11
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Pesquisar checklists avulsos futuros
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E selecionar aba "Futuros"
E clicar em "Lupa"
Entao apresenta os checklists futuros

Exemplos:
| Empresa |
| MATRIZ  |



@Cenario12
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Pesquisar um checklist avulso já cadastrado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E inserir <Buscar>
E clicar em "Lupa"
Entao apresenta a checklist pesquisado

Exemplos:
| Empresa | Buscar |
| MATRIZ  | 3193   |



@Cenario13
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Filtrar um checklist avulso por status
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Filtro"
E selecionar o <Status>
E inserir <Patrimonio>
E inserir <Formulario>
E inserir <DataExecucao>
E inserir <DataConclusao>
E clicar em "Filtrar"
Entao apresenta a checklist filtrado

Exemplos:
| Empresa | Status     | Patrimonio | Formulario | DataExecucao | DataConclusao |
| MATRIZ  | A Executar |            |            |              |               |
| MATRIZ  | A conferir |            |            | 14/06/2023   |               |
| MATRIZ  | Concluido  | 184        |            |              | 09/11/2022    |



@Cenario14
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Estornar execução de um checklist avulso
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E inserir <Patrimonio>
E clicar "Continuar"
E clicar em "Estornar Execução"
E clicar em "Confirmar"
Entao estorna a execução
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Patrimonio | MensagemDeSucesso   |
| MATRIZ  | 3193       | Processo concluído! |



@Cenario15
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Concluir a conferência um checklist avulso
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Concluir"
E clicar em "Confirmar"
Entao estorna a execução
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Buscar | MensagemDeSucesso   |
| MATRIZ  | 3193   | Processo concluído! |



@Cenario16
@Manual
@ChecklistAvulso
Esquema do Cenario: Executar um checklist avulso para o patrimônio com campo obrigatório em branco
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar em "Executar"
E clicar em "Confirmar"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa | Patrimonio | MensagemDeSucesso                |
| MATRIZ  | GA550.03   | Campo "Horímetro" é obrigatório! |



@Cenario17
@Manual
@ChecklistAvulso
Esquema do Cenario: Cadastrar um checklist avulso para o patrimônio no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
Quando selecionar <Modo>
E selecionar "CheckList"
E selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Voltar"
Entao grava os dados

Exemplos:
| Empresa | Modo    | Patrimonio |
| MATRIZ  | Offline | 3193       |



@Cenario18
@Manual
@ChecklistAvulso
Esquema do Cenario: Cadastrar um checklist avulso e vincular checklist já criado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
Quando selecionar <Modo>
E selecionar "CheckList"
E selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Raio"
E clicar em "Vincular Checklist"
E selecionar <Checklist>
E clicar em "Vincular Checklists"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Modo    | Patrimonio | Checklist | MensagemDeSucesso                  |
| MATRIZ  | Offline | 3193       | PAT 01891 | Checklists vinculados com sucesso! |



@Cenario19
@Manual
@ChecklistAvulso
Esquema do Cenario: Cadastrar um checklist avulso e desvincular checklist
E que esteja logado com usuário funcionário
E selecionar <Empresa>
Quando selecionar <Modo>
E selecionar "CheckList"
E selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Raio"
E clicar em "Checklists Vinculados"
E selecionar <Checklist>
E clicar em "Desvincular Checklists"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Modo    | Patrimonio | Checklist | MensagemDeSucesso                     |
| MATRIZ  | Offline | 3193       | PAT 01891 | Checklists desvinculados com sucesso! |



@Cenario20
@Automatizar
@ChecklistAvulso
Esquema do Cenario: Cadastrar um checklist avulso e me tornar responsável
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Raio"
E clicar em "Me tornar responsável"
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Patrimonio | Responsavel | MensagemDeSucesso   |
| MATRIZ  | 3193       | Admin       | Processo concluído! |



@Cenario21
@Manual
@ChecklistAvulso
Esquema do Cenario: Executar um checklist avulso e enviar um email de alerta de não conformidade
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E preencher os campos disponíveis
E preencher <NivelOleo>
E clicar em "Executar"
Entao grava os dados
E envia e-mail para os emails cadastrados

Exemplos:
| Empresa | Patrimonio | NivelOleo | MensagemDeSucesso   |
| MATRIZ  | 202        | Baixo     | Processo concluído! |



@Cenario22
@Manual
@ChecklistAvulso
Esquema do Cenario: Consultar um checklist avulso
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em <Opcao>
E clicar em "Lupa"
Entao apresenta os dados consultados

Exemplos:
| Empresa    | Opção     |
| MATRIZ     | Atrasados |
| BHLOCADORA | Atuais    |
| IPATINGA   | Futuros   |



@Cenario23
@Manual
@ChecklistAvulso
Esquema do Cenario: Filtrar um checklist avulso
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Avulso"
E clicar em "Filtro"
E selecionar <Status>
E selecionar <Opcoes>
E inserir <Patrimonio>
E inserir <Formulario>
E inserir <DataDeExecucao>
E inserir <DataDeConclusao>
E clicar em "Filtrar"
Entao apresenta os dados filtrados

Exemplos:
| Empresa    | Status     | Opcoes | Patrimonio | Formulario            | DataDeExecucao | DataDeConclusao |
| MATRIZ     | A Executar | Sim    | GA550.03   |                       |                |                 |
| BHLOCADORA | A Conferir |        |            | Checklist OPERACIONAL | 26/06/2023     |                 |
| IPATINGA   | Concluído  | Não    |            |                       |                | 26/06/2023      |


