#language: pt
#InformarPendenciaOM
#ServicesMobile


Funcionalidade: Informar uma pendência na Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero informar uma pendência na Ordem de Manutenção
  Para registrar pendências que impacte a conclusão do serviço


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@InformarPendenciaOM
Esquema do Cenario: Adicionar pendência na criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E clicar em "Mais"
Quando selecionar "Informar Pendência"
E clicar em "Situação Execução"
E inserir <SituacaoExecucao>
E inserir <DataPrevistaSaida>
E clicar em "Gerar Pendência"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | SituacaoExecucao | DataPrevistaSaida | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Reparo           | 10/05/2023        | Pendência gerada! |



@Cenario2
@Manual
@InformarPendenciaOM
Esquema do Cenario: Adicionar pendência na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Informar Pendência"
E clicar em "Situação Execução"
E inserir <SituacaoExecucao>
E inserir <DataPrevistaSaida>
E clicar em "Gerar Pendência"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | SituacaoExecucao | DataPrevistaSaida | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | Reparo           | 10/05/2023        | Pendência gerada! |



@Cenario3
@Automatizar
@InformarPendenciaOM
Esquema do Cenario: Cancelar a adição da pendência na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Informar Pendência"
E clicar em "Situação Execução"
E inserir <SituacaoExecucao>
E inserir <DataPrevistaSaida>
E clicar em "Tela OM"
Entao não grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | SituacaoExecucao | DataPrevistaSaida |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | Reparo           | 10/05/2023        |



@Cenario4
@Manual
@FinalizarPendenciaOM
Esquema do Cenario: Finalizar a pendência na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Informar Pendência"
E clicar em "Situação Execução"
E clicar em "Finalizar Pendência"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | MensagemDeSucesso     |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | Pendência finalizada! |



@Cenario5
@Automatizar
@FinalizarPendenciaOM
Esquema do Cenario: Cancelar finalização da pendência na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Informar Pendência"
E clicar em "Situação Execução"
E clicar em "Finalizar Pendência"
E clicar em "Tela OM"
Entao não grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX |



@Cenario6
@Manual
@InformarPendenciaOM
Esquema do Cenario: Adicionar pendência na criação da Ordem de Manutenção no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar <Modo>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E clicar em "Mais"
E selecionar "Informar Pendência"
E clicar em "Situação Execução"
E inserir <SituacaoExecucao>
E inserir <DataPrevistaSaida>
E clicar em "Gerar Pendência"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | Modo    | SituacaoExecucao | DataPrevistaSaida | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Offline | Reparo           | 10/05/2023        | Pendência gerada! |


