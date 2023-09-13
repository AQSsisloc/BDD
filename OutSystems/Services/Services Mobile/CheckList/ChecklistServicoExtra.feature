#language: pt
#ChecklistServicoExtra
#ServicesMobile


Funcionalidade: Cadastrar um checklist de serviço extra para um patrimônio ou equipamento
  Como um usuário do Services Mobile 
  Eu quero cadastrar um checklist avulso de serviço extra
  Para utilizar na conferência esporádica do equipamento


Dado esteja logado no Services Mobile


@Cenario1
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Cadastrar um checklist de serviço extra para o patrimônio
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Voltar"
Entao grava os dados

Exemplos:
| Empresa | Patrimonio |
| MATRIZ  | bar-1      |



@Cenario2
@Manual
@ChecklistServicoExtra
Esquema do Cenario: Cadastrar um checklist de serviço extra para o patrimônio da leitura BarCode
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E clicar em "Mais"
E selecionar "BarCode"
E realizar a leitura do código de barras
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Voltar"
Entao grava os dados

Exemplos:
| Empresa | Patrimonio |
| MATRIZ  | bar-1      |



@Cenario3
@Manual
@ChecklistServicoExtra
Esquema do Cenario: Cadastrar um checklist avulso para o patrimônio da leitura QrCode
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E clicar em "Mais"
E selecionar "QrCode"
E realizar a leitura do código de barras
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Voltar"
Entao grava os dados

Exemplos:
| Empresa | Patrimonio |
| MATRIZ  | bar-1      |



@Cenario4
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Cadastrar um checklist de serviço extra e definir responsável
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
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
| MATRIZ  | bar-1      | Admin       |



@Cenario5
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Executar um checklist de serviço extra para o patrimônio
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E clicar em "Executar"
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Patrimonio | MensagemDeSucesso                |
| MATRIZ  | bar-1      | Checklist executado com sucesso! |



@Cenario6
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Excluir um checklist de serviço extra de um patrimônio
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E clicar em "Raio"
E clicar em "Excluir"
E clicar em "Excluir"
Entao exclui os dados
E apresenta a <MensagemDeExclusao>

Exemplos:
| Empresa | Patrimonio | MensagemDeExclusao               |
| MATRIZ  | BMELET-05  | Checklist excluído com sucesso ! |



@Cenario7
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Excluir um checklist de serviço extra de um patrimônio sem responsável
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
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
| MATRIZ  | BMELET-05  | Apenas o usuário definido como responsável por esse registro pode realizar esta operação! |



@Cenario8
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Visualizar fila de sicronização de um checklist de serviço extra
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E clicar em "Raio"
E clicar em "Ver Fila de Sicronização"
Entao apresenta os itens para sicronização

Exemplos:
| Empresa | Patrimonio |
| MATRIZ  | bar-1      |



@Cenario9
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Pesquisar checklists de serviço extra atuais
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E selecionar aba "Atuais"
E clicar em "Lupa"
Entao apresenta os checklists atuais

Exemplos:
| Empresa |
| MATRIZ  |



@Cenario10
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Pesquisar checklists de serviço extra atrasados
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E selecionar aba "Atrasados"
E clicar em "Lupa"
Entao apresenta os checklists atrasados

Exemplos:
| Empresa |
| MATRIZ  |



@Cenario11
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Pesquisar checklists de seviço extra futuros
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E selecionar aba "Futuros"
E clicar em "Lupa"
Entao apresenta os checklists futuros

Exemplos:
| Empresa |
| MATRIZ  |



@Cenario12
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Pesquisar um checklist serviço extra já cadastrado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E inserir <Buscar>
E clicar em "Lupa"
Entao apresenta a checklist pesquisado

Exemplos:
| Empresa | Buscar |
| MATRIZ  | bar-1  |



@Cenario13
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Estornar execução de um checklist de serviço extra
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço extra"
E inserir <Patrimonio>
E clicar "Continuar"
E clicar em "Estornar Execução"
E clicar em "Confirmar"
Entao estorna a execução
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Patrimonio | MensagemDeSucesso                |
| MATRIZ  | bar-1      | Checklist estornado com sucesso! |



@Cenario14
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Concluir a conferência um checklist de serviço extra
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E inserir <Buscar>
E clicar "Avançar"
E clicar em "Concluir"
E clicar em "Confirmar"
Entao estorna a execução
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Buscar | MensagemDeSucesso               |
| MATRIZ  | bar-1  | Checklist concluído com sucesso |



@Cenario15
@Manual
@ChecklistServicoExtra
Esquema do Cenario: Executar um checklist de serviço extra para o patrimônio com campo obrigatório em branco
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar em "Executar"
E clicar em "Confirmar"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa | Patrimonio | MensagemDeSucesso                      |
| MATRIZ  | BMELETE-05 | Campo "Equipamento OK?" é obrigatório! |



@Cenario16
@Manual
@ChecklistServicoExtra
Esquema do Cenario: Cadastrar um checklist de serviço extra para o patrimônio no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
Quando selecionar <Modo>
E selecionar "CheckList"
E selecionar "Serviço Extra"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Voltar"
Entao grava os dados

Exemplos:
| Empresa | Modo    | Patrimonio |
| MATRIZ  | Offline | bar-1      |



@Cenario17
@Automatizar
@ChecklistServicoExtra
Esquema do Cenario: Cadastrar um checklist de serviço extra e me tornar responsável
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
Quando selecionar "Serviço Extra"
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
| Empresa | Patrimonio | Responsavel | MensagemDeSucesso                |
| MATRIZ  | bar-1      | Admin       | Responsável definido com sucesso |



@Cenario18
@Manual
@ChecklistServicoExtra
Esquema do Cenario: Executar um checklist de serviço extra e enviar um email 
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar "CheckList"
E selecionar "Serviço Extra"
E clicar em "Mais"
E inserir <Patrimonio>
E clicar "Continuar"
E preencher os campos disponíveis
E clicar em "Executar"
Quando clicar em "Enviar e-mail"
E preencher os campos disponíveis
E clicar em "Enviar"
Entao grava os dados
E envia e-mail para os emails definidos

Exemplos:
| Empresa | Patrimonio | 
| MATRIZ  | bar-1      | 


