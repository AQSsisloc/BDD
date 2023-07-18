#language: pt
#ConcluirExecucaoOM
#ServicesMobile


Funcionalidade: Concluir a execução de uma Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero concluir a execução da ordem de Manutenção
  Para concluir a ordem de manutenção e apontar horas trabalhadas


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Concluir execução da Ordem de Manutenção informando Horas máquina parada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar "Concluir Execução"
E inserir <Horas>
E inserir <Minutos>
E inserir <Segundos>
E inserir <MedidorAtual>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | Horas | Minutos | Segundos | MedidorAtual | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 07    | 43      | 59       | 7,43         | Concluído!        |



@Cenario2
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Concluir execução da Ordem de Manutenção criada sem informar Horas máquina parada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | MedidorAtual | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 7,43         | Concluído!        |



@Cenario3
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Concluir execução da Ordem de Manutenção criada com preenchimento de checklist obrigatório
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E apresenta a <MensagemDeRetorno>
E preenche os dados do checklist
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao                     | MedidorAtual | MensagemDeRetorno                                                               | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Compactador de Percussão BOMAG BT60/4 | 7,43         | Preenchimento de checklist é obrigatório para o patrimônio "64036-101540555920" | Concluído!        | 



@Cenario4
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Concluir execução da Ordem de Manutenção de um checklist não encontrado e continuar sem checklist
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar "Concluir Execução"
E inserir <Horas>
E inserir <Minutos>
E inserir <Segundos>
E inserir <MedidorAtual>
E clicar em "Confirmar"
E apresenta a <MensagemDeRetorno1>
E clicar em "Continuar Sem Checklist"
E inserir <Motivo>
E clicar em "OK"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao               | Horas | Minutos | Segundos | MedidorAtual | MensagemDeRetorno1                                                     | Motivo                            | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Betoneira 320 Lts C/Carregador  | 07    | 43      | 59       | 7,43         | Checklist não encontrado! Deseja criar o checklist para o patrimônio?  | Não haverá checklist para essa OM | Concluído!        |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Placa Vibratória Wacker VPY1750 | 07    | 43      | 59       | 7,43         | Checklist não encontrado! Deseja criar o checklist para o equipamento? | Não haverá checklist para essa OM | Concluído!        |



@Cenario5
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Concluir execução da Ordem de Manutenção de um checklist não encontrado e criar checklist
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar "Concluir Execução"
E inserir <Horas>
E inserir <Minutos>
E inserir <Segundos>
E inserir <MedidorAtual>
E clicar em "Confirmar"
E apresenta a <MensagemDeRetorno>
E clicar em "Criar checklist"
E inserir dados do checklist
E clicar em "Executar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Horas | Minutos | Segundos | MedidorAtual | MensagemDeRetorno         | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Betoneira 320 Lts C/Carregador | 07    | 43      | 59       | 7,43         | Checklist não encontrado! | Concluído!        |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Placa Vibratória Wacker VPY1750 | 07    | 43      | 59       | 7,43         | Checklist não encontrado! | Concluído!        |



@Cenario6
@Automatizar
@ConcluirExecucaoOM
Esquema do Cenario: Concluir execução da Ordem de Manutenção criada com patrimônio não encontrado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao                     | MedidorAtual | MensagemDeSucesso                               |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Compactador de Percussão BOMAG BT60/4 | 7,43         | Patrimônio '64036-101504555920' não encontrado! |



@Cenario7
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Concluir execução da Ordem de Manutenção com valor de medição menor que registrado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar "Concluir Execução"
E inserir <Horas>
E inserir <Minutos>
E inserir <Segundos>
E inserir <MedidorAtual>
E clicar em "Confirmar"
Entao não grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Horas | Minutos | Segundos | MedidorAtual | MensagemDeRetorno                                                                                                  |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Betoneira 320 Lts C/Carregador | 07    | 43      | 59       | 10           | Não é possível lançar medidor retroativo. Valor de medição informado é menor do que o já registrado no patrimônio. |



@Cenario8
@Automatizar
@ConcluirExecucaoOM
Esquema do Cenario: Cancelar a conclusão da execução da Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar "Concluir Execução"
E inserir <Horas>
E inserir <Minutos>
E inserir <Segundos>
E inserir <MedidorAtual>
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao                     | Horas | Minutos | Segundos | MedidorAtual |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Compactador de Percussão BOMAG BT60/4 | 07    | 43      | 59       | 7,43         |



@Cenario9
@Automatizar
@ConcluirExecucaoOM
Esquema do Cenario: Estornar a conclusão da execução da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar "Concluir Execução"
E inserir <Horas>
E inserir <Minutos>
E inserir <Segundos>
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
Quando clicar em "Estornar Conclusão"
E clicar em "Confirmar"
Entao estorna a gravação dos dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | Horas | Minutos | Segundos | MedidorAtual | MensagemDeRetorno    |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 07    | 43      | 59       | 7,43         | Conclusão estornada! |



@Cenario10
@Automatizar
@ConcluirExecucaoOM
Esquema do Cenario: Cancelar o estorno da conclusão de execução da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
Quando clicar em "Estornar Conclusão"
E clicar em "Cancelar"
Entao não estorna a gravação dos dados

Exemplos:
| Empresa    | Almoxarifado         | MedidorAtual |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 7,43         |



@Cenario11
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Entregar equipamento após a conclusão da execução da Ordem de Manutenção gravando assinatura
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
Quando clicar em "Entregar Equipamento"
E clicar em "Confirmar"
E inserir <Descricao>
E inserir <Responsavel>
E clicar em "Gravar e continuar Entrega"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | MedidorAtual | Descricao              | Responsavel | MensagemDeSucesso  |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 7,43         | Entrega de equipamento | Admin TST   | Entrega realizada! |



@Cenario12
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Entregar equipamento após a conclusão da execução da Ordem de Manutenção e coletar assinatura
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
Quando clicar em "Entregar Equipamento"
E clicar em "Confirmar"
E inserir <Descricao>
E inserir <Responsavel>
E clicar em "Coletar Assinatura"
E clicar em "Confirmar"
Entao grava os dados

Exemplos:
| Empresa    | Almoxarifado         | MedidorAtual | Descricao              | Responsavel |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 7,43         | Entrega de equipamento | Admin TST   |



@Cenario13
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Entregar equipamento após a conclusão da execução da Ordem de Manutenção e cancelar a coleta assinatura
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
Quando clicar em "Entregar Equipamento"
E clicar em "Confirmar"
E inserir <Descricao>
E inserir <Responsavel>
E clicar em "Coletar Assinatura"
E clicar em "Limpar"
Entao não grava os dados

Exemplos:
| Empresa    | Almoxarifado         | MedidorAtual | Descricao              | Responsavel |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 7,43         | Entrega de equipamento | Admin TST   |



@Cenario14
@Automatizar
@ConcluirExecucaoOM
Esquema do Cenario: Entregar equipamento após a conclusão da execução da Ordem de Manutenção e editar assinatura coletada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
Quando clicar em "Entregar Equipamento"
E clicar em "Confirmar"
E inserir <Descricao>
E inserir <Responsavel>
E clicar em "Coletar Assinatura"
E clicar em "Confirmar"
E clicar em "Editar Assinatura"
E clicar em "Confirmar"
Entao grava os dados

Exemplos:
| Empresa    | Almoxarifado         | MedidorAtual | Descricao              | Responsavel |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 7,43         | Entrega de equipamento | Admin TST   |



@Cenario15
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Entregar equipamento após a conclusão da execução da Ordem de Manutenção sem informar campos obrigatórios
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
Quando clicar em "Entregar Equipamento"
E clicar em "Confirmar"
E clicar em "Gravar e continuar Entrega"
Entao não grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | MedidorAtual | Descricao              | Responsavel | MensagemDeRetorno                                       |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 7,43         | Entrega de equipamento | Admin TST   | Descrição e responsável da assinatura são obrigatórios! |



@Cenario16
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Entregar equipamento após a conclusão da execução da Ordem de Manutenção sem coletar assinatura
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
Quando clicar em "Entregar Equipamento"
E clicar em "Confirmar"
E inserir <Descricao>
E inserir <Responsavel>
E clicar em "Coletar Assinatura"
E clicar em "Confirmar"
E clicar em "Gravar e Coletar nova assinatura"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | MedidorAtual | Descricao | Responsavel | MensagemDeRetorno              |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 7,43         | Teste TST | Admin TST   | Assinatura Teste TST coletada! |



@Cenario17
@Automatizar
@ConcluirExecucaoOM
Esquema do Cenario: Cancelar a entrega de equipamento após a conclusão da execução da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
Quando clicar em "Entregar Equipamento"
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Empresa    | Almoxarifado         | MedidorAtual |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 7,43         |



@Cenario18
@Automatizar
@ConcluirExecucaoOM
Esquema do Cenario: Concluir execução da Ordem de Manutenção criada e enviar relatório da OM por e-mail
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
Quando clicar em "Entregar Equipamento"
E inserir os dados
E clicar em "Gravar e Coletar nova assinatura"
E clicar em "Sim"
E inserir dados de envio do e-mail
E clicar em "Enviar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao                     | MedidorAtual | MensagemDeSucesso  |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Compactador de Percussão BOMAG BT60/4 | 7,43         | Entrega realizada! |



@Cenario19
@Automatizar
@ConcluirExecucaoOM
Esquema do Cenario: Concluir execução da Ordem de Manutenção criada e não enviar relatório da OM por e-mail
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
Quando clicar em "Entregar Equipamento"
E inserir os dados
E clicar em "Gravar e Coletar nova assinatura"
E clicar em "Não"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao                     | MedidorAtual | MensagemDeSucesso  |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Compactador de Percussão BOMAG BT60/4 | 7,43         | Entrega realizada! |



@Cenario20
@Automatizar
@ConcluirExecucaoOM
Esquema do Cenario: Estornar a entrega de equipamento após a conclusão da execução da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
E inserir dados de envio do e-mail
E clicar em "Enviar"
Quando clicar em "Estornar Entrega"
E clicar em "Confirmar"
Entao estorna a gravação dos dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | MedidorAtual | MensagemDeRetorno  |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 7,43         | Entrega estornada! |



@Cenario21
@Automatizar
@ConcluirExecucaoOM
Esquema do Cenario: Cancelar o estorno da entrega de equipamento após a conclusão da execução da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E selecionar "Concluir Execução"
E inserir <MedidorAtual>
E clicar em "Confirmar"
E gravar os dados
E inserir dados de envio do e-mail
E clicar em "Enviar"
Quando clicar em "Estornar Entrega"
E clicar em "Cancelar"
Entao não estorna a gravação dos dados

Exemplos:
| Empresa    | Almoxarifado         | MedidorAtual |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 7,43         |



@Cenario22
@Manual
@ConcluirExecucaoOM
Esquema do Cenario: Concluir execução da Ordem de Manutenção no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar <Modo>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar "Concluir Execução"
E inserir <Horas>
E inserir <Minutos>
E inserir <Segundos>
E inserir <MedidorAtual>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | Modo    | Horas | Minutos | Segundos | MedidorAtual | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Offline | 07    | 43      | 59       | 7,43         | Concluído!        |


