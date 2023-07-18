#language: pt
#CriarOM
#ServicesMobile

Funcionalidade: Cadastrar uma Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero cadastrar uma ordem de Manutenção
  Para utilizar na prestação de serviços e checklist


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@CriarOM
Esquema do Cenario: Cadastrar Ordem de Manutenção do tipo Próprio/Sublocado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
Quando selecionar "Criar OM"
E selecionar <ProprioDeTerceiro>
E selecionar <Patrimonio>
E preencher <PrevisaoDeExecucao>
E selecionar <Tipo>
E preencher <Descricao>
E preencher <Problema>
E preencher <Observacao>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | ProprioDeTerceiro | Patrimonio | PrevisaoDeExecucao | Tipo       | Descricao             | Problema     | Observacao               | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Próprio/Sublocado | 64049      | 04/05/2023 13:30   | Preventiva | Manutenção Preventiva | Sem problema | Prevenção de equipamento | Concluído         |


@Cenario2
@Manual
@CriarOM
Esquema do Cenario: Cadastrar Ordem de Manutenção do tipo De Terceiro
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
Quando selecionar "Criar OM"
E selecionar <ProprioDeTerceiro>
E selecionar <Equipamento>
E selecionar <Cliente>
E preencher <NumeroDeSerie>
E preencher <PrevisaoDeExecucao>
E selecionar <Tipo>
E preencher <Descricao>
E preencher <Problema>
E preencher <Observacao>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | ProprioDeTerceiro | Equipamento        | Cliente                | NumeroDeSerie | PrevisaoDeExecucao | Tipo      | Descricao            | Problema                | Observacao              | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | De terceiro       | Compactador Wacker | Construtora Cross Ltda | 123456        | 04/05/2023 13:30   | Corretiva | Manutenção Corretiva | Equipamento com defeito | Correção no equipamento | Concluído         |


@Cenario3
@Manual
@CriarOM
Esquema do Cenario: Cadastrar Ordem de Manutenção com Equipamento "Em Manutenção"
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
Quando selecionar "Criar OM"
E selecionar <ProprioDeTerceiro>
E selecionar <Patrimonio>
E selecionar <Almoxarifado2>
E preencher <PrevisaoDeExecucao>
E selecionar <Tipo>
E preencher <Descricao>
E preencher <Problema>
E preencher <Observacao>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | ProprioDeTerceiro | Patrimonio | Almoxarifado2          | PrevisaoDeExecucao | Tipo       | Descricao             | Problema     | Observacao               | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Próprio/Sublocado | 64049      | IMOBILIZADO MANUTENÇÃO | 04/05/2023 13:30   | Preventiva | Manutenção Preventiva | Sem problema | Prevenção de equipamento | Concluído         |


@Cenario4
@Automatizar
@CriarOM
Esquema do Cenario: Cadastrar Ordem de Manutenção como Próprio/Sublocado sem inserir dados
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
Quando selecionar "Criar OM"
E selecionar <ProprioDeTerceiro>
E selecionar <Tipo>
E clicar em "Salvar"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | ProprioDeTerceiro | Tipo                | MensagemDeRetorno              |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Próprio/Sublocado | Inspeção preventiva | Patrimônio deve ser informado! |


@Cenario5
@Automatizar
@CriarOM
Esquema do Cenario: Cadastrar Ordem de Manutenção como De terceiro sem inserir dados
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
Quando selecionar "Criar OM"
E selecionar <ProprioDeTerceiro>
E selecionar <Equipamento>
E selecionar <Tipo>
E clicar em "Salvar"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | ProprioDeTerceiro | Equipamento              | Tipo               | MensagemDeRetorno           |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | De terceiro       | Compactador Wacker BS52Y | Inspeção corretiva | Cliente deve ser informado! |


@Cenario6
@Manual
@CriarOM
Esquema do Cenario: Cadastrar Ordem de Manutenção com informações por voz
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
Quando selecionar "Criar OM"
E selecionar <ProprioDeTerceiro>
E selecionar <Patrimonio>
E preencher <PrevisaoDeExecucao>
E selecionar <Tipo>
E clicar em <VozDescricao>
E clicar em <VozProblema>
E clicar em <VozObservacao>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | ProprioDeTerceiro | Patrimonio | PrevisaoDeExecucao | Tipo       | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Próprio/Sublocado | 64049      | 04/05/2023 13:30   | Preventiva | Concluído         |


@Cenario7
@Automatizar
@CancelarCriacaoOM
Esquema do Cenario: Cancelar a criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
Quando selecionar "Criar OM"
E clicar em "Voltar"
Entao não grava os dados

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |


@Cenario8
@Manual
@CancelarInfoCriacaoOM
Esquema do Cenario: Cancelar informações na criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
Quando selecionar "Criar OM"
E selecionar <ProprioDeTerceiro>
E selecionar <Patrimonio>
E selecionar <Almoxarifado2>
E preencher <PrevisaoDeExecucao>
E selecionar <Tipo>
E preencher <Descricao>
E clicar em "Cancelar"
E preencher <Problema>
E clicar em "Cancelar"
E preencher <Observacao>
E clicar em "Cancelar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | ProprioDeTerceiro | Patrimonio | PrevisaoDeExecucao | Tipo       | Descricao             | Problema     | Observacao               | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Próprio/Sublocado | 64049      | 04/05/2023 13:30   | Preventiva | Manutenção Preventiva | Sem problema | Prevenção de equipamento | Concluído         |



@Cenario9
@Manual
@CriarOM
Esquema do Cenario: Cadastrar Ordem de Manutenção do tipo Próprio/Sublocado no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar <Modo>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E selecionar <ProprioDeTerceiro>
E selecionar <Patrimonio>
E preencher <PrevisaoDeExecucao>
E selecionar <Tipo>
E preencher <Descricao>
E preencher <Problema>
E preencher <Observacao>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | Modo    | ProprioDeTerceiro | Patrimonio | PrevisaoDeExecucao | Tipo       | Descricao             | Problema     | Observacao               | MensagemDeSucesso |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Offline | Próprio/Sublocado | 64049      | 04/05/2023 13:30   | Preventiva | Manutenção Preventiva | Sem problema | Prevenção de equipamento | Concluído         |


