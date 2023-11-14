#language: pt
#PainelOMs
#ServicesWeb


Funcionalidade: Exibir em tempo real as ordens de manutenção e seus respectivos status e atualizações 
  Como um usuário do Services Web
  Eu quero visualizar o fluxo de ordens de manutenção 
  Para facilitar gerenciamento de ordens de manutenção  
 

@Cenario1
@Manual
@PainelOMs
Cenario: Cadastrar ordem de manutenção 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava no Sisloc <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                                    | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao | Problema | Status     | Patrimonio | Ultil | Total | SLA    |
| Oficina aguardando liberação do equipamento | Pendente     | 020783 | -       | Rosano Vasconcelos |                | teste    | Executando | PG-10      | 10:43 | 49:42 | -10:13 |



@Cenario2
@Manual
@PainelOMs
Esquema do Cenario: Requisitar equipamento 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status oficina "Oficina aguardando liberação do equipamento"
E clicar "Requisitar Equipamento"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                                    | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao | Problema | Status     | Patrimonio | Ultil | Total | SLA    |
| Oficina aguardando liberação do equipamento | Pendente     | 020783 | -       | Rosano Vasconcelos |                | teste    | Executando | PG-10      | 10:43 | 49:42 | -10:13 |


 
@Cenario3
@Manual
@PainelOMs
Esquema do Cenario: Iniciar Levantamento 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status oficina "Oficina aguardando liberação do equipamento"
E clicar "Iniciar Levantamento"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                                          | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao | Problema | Status     | Patrimonio | Ultil | Total | SLA    |
| Oficina fazendo levantamento dos serviços e peças | Pendente     | 020783 | -       | Rosano Vasconcelos |                | teste    | Executando | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario4
@Manual
@PainelOMs
Esquema do Cenario: Concluir levantamento de equipamento em perfeito estado
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status oficina "Oficina fazendo levantamento dos serviços e peças"
E clicar "Concluir Levantamento"
E marcar "Equipamento em perfeito estado de conservação e uso"
E preencher os dados 
E clicar "Ok"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                                            | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao | Problema | Status     | Patrimonio | Ultil | Total | SLA    |
| Equipamento em perfeito estado de conservação e uso | Conlcuído    | 020783 | -       | Rosano Vasconcelos |                | teste    | Executando | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario4
@Manual
@PainelOMs
Esquema do Cenario: Concluir levantamento 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status oficina "Oficina fazendo levantamento dos serviços e peças"
E clicar "Concluir Levantamento"
E clicar "Ok"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                                            | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao | Problema | Status     | Patrimonio | Ultil | Total | SLA    |
| Equipamento em perfeito estado de conservação e uso | Pendente    | 020783 | -       | Rosano Vasconcelos |                | teste    | Executando | BEB-1      | 10:43 | 49:42 | -10:13 |


 
@Cenario5
@Manual
@PainelOMs
Esquema do Cenario: Autorizar Faturamento 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status oficina "Oficina aguardando autorização para execução"
E clicar "Autorizar Faturamento"
E preencher os dados
E clicar "Ok"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                                  | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao | Problema | Status     | Patrimonio | Ultil | Total | SLA    |
| Oficina aguarda autorização para execução | Pendente    | 020783 | -       | Rosano Vasconcelos |                | teste    | Executando | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario6
@Manual
@PainelOMs
Esquema do Cenario: Autorizar Execução 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "Oficina aguarda autorização para execução"
E clicar "Autorizar Execução"
E preencher os dados
E clicar "Ok"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                               | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao | Problema | Status     | Patrimonio | Ultil | Total | SLA    |
| Oficina executando ordem de manutenção | Em andamento | 020783 | -       | Rosano Vasconcelos |                | teste    | Executando | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario7
@Manual
@PainelOMs
Esquema do Cenario: Programar Execução 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "ficina executando ordem de manutenção"
E clicar "Programar Execução"
E preencher os dados
E clicar "Ok"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                               | StatusPainel | OM     | Tecnico            | Cliente            | UltAtualizacao   | Problema | Status     | Patrimonio | Ultil | Total | SLA    |
| Oficina executando ordem de manutenção | Em andamento | 020783 | Rosano Vasconcelos | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | Executando | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario8
@Manual
@PainelOMs
Esquema do Cenario: Concluir Execução 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "Oficina executando ordem de manutenção"
E clicar "Concluir Execução"
E preencher os dados
E clicar "Ok"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                 | StatusPainel | OM     | Tecnico            | Cliente            | UltAtualizacao   | Problema | Status     | Patrimonio | Ultil | Total | SLA    |
| Oficina concluiu serviço | Concluído    | 020783 | Rosano Vasconcelos | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | Executando | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario9
@Manual
@PainelOMs
Esquema do Cenario: Entregar equipamento 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "Oficina concluiu serviço"
E clicar "Entregar Equipamento"
E preencher os dados
E clicar "Sim"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM             | StatusPainel | OM     | Tecnico            | Cliente            | UltAtualizacao   | Problema | Status        | Patrimonio | Ultil | Total | SLA    |
| Equipamento entregue | Concluído    | 020783 | Rosano Vasconcelos | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | Epto.Entregue | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario10
@Manual
@PainelOMs
Esquema do Cenario: Encerrar
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "Equipamento entregue"
E clicar "Encerrar"
E preencher os dados
E clicar "Sim"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM     | StatusPainel | OM     | Tecnico            | Cliente            | UltAtualizacao   | Problema | Status | Patrimonio | Ultil | Total | SLA    |
| F - Fechadas | Concluído    | 020783 | Rosano Vasconcelos | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | -      | BEB-1      | 10:43 | 49:42 | -10:13 |


@Cenario11
@Manual
@PainelOMs
Esquema do Cenario: Estornar encerramento
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "F - Fechadas"
E clicar "Estornar Encerramento"
E clicar "Sim"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM             | StatusPainel | OM     | Tecnico            | Cliente            | UltAtualizacao   | Problema | Status | Patrimonio | Ultil | Total | SLA    |
| Equipamento entregue | Concluído    | 020783 | Rosano Vasconcelos | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | -      | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario12
@Manual
@PainelOMs
Esquema do Cenario: Estornar entrega
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "Equipamento entregue"
E clicar "Estornar Entrega"
E clicar "Sim"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                 | StatusPainel | OM     | Tecnico            | Cliente            | UltAtualizacao   | Problema | Status | Patrimonio | Ultil | Total | SLA    |
| Oficina concluiu serviço | Concluído    | 020783 | Rosano Vasconcelos | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | -      | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario13
@Manual
@PainelOMs
Esquema do Cenario: Estornar conclusão Execução
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "Oficina concluiu serviço"
E clicar "Estornar Conclusão Execução"
E clicar "Sim"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                               | StatusPainel | OM     | Tecnico            | Cliente            | UltAtualizacao   | Problema | Status | Patrimonio | Ultil | Total | SLA    |
| Oficina executando ordem de manutenção | Em andamento | 020783 | Rosano Vasconcelos | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | -      | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario14
@Manual
@PainelOMs
Esquema do Cenario: Estornar programação
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "Oficina executando ordem de manutenção "
E clicar "Estornar Programação"
E clicar "Sim"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                               | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao   | Problema | Status | Patrimonio | Ultil | Total | SLA    |
| Oficina executando ordem de manutenção | Em andamento | 020783 |  -      | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | -      | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario15
@Manual
@PainelOMs
Esquema do Cenario: Estornar autorização de execução 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "Oficina executando ordem de manutenção "
E clicar "Estornar Autoriz.Execução"
E clicar "Sim"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                                     | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao   | Problema | Status | Patrimonio | Ultil | Total | SLA    |
| Oficina aguardando autorização para execução | Pendente     | 020783 | -       | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | -      | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario16
@Manual
@PainelOMs
Esquema do Cenario: Estornar Autorização Faturamento
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "Oficina executando ordem de manutenção"
E clicar "Estornar Autoriz.Faturamento"
E clicar "Sim"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                                     | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao   | Problema | Status | Patrimonio | Ultil | Total | SLA    |
| Oficina aguardando autorização para execução | Pendente     | 020783 | -       | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | -      | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario17
@Manual
@PainelOMs
Esquema do Cenario: Estornar Conclusão Levantamento
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "Oficina aguarda autorização para execução"
E clicar "Estornar Conclusão Levantamento"
E clicar "Sim"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                                         | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao   | Problema | Status | Patrimonio | Ultil | Total | SLA    |
| Oficina fazendo levantamento de serviços e peças | Pendente     | 020783 | -       | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | -      | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario18
@Manual
@PainelOMs
Esquema do Cenario: Estornar Início levantamento
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Ordem de Manutenção"
E esteja com status "Oficina fazendo levantamento de serviços e peças"
E clicar "Estornar Início Levantamento"
E clicar "Sim"
Entao grava no Sisloc o <StatusOM>
E apresenta <StatusPainel>
E apresenta <OM>
E apresenta <Tecnico>
E apresenta <Cliente>
E apresenta <UltAtualizacao>
E apresenta <Problema>
E apresenta <Status>
E apresenta <Patrimonio>
E apresenta <Util>
E apresenta <Total>
E apresenta <SLA> no painel do Services Web

Exemplos:
| StatusOM                                 | StatusPainel | OM     | Tecnico | Cliente            | UltAtualizacao   | Problema | Status | Patrimonio | Ultil | Total | SLA    |
| Oficina aguarda liberação do equipamento | Pendente     | 020783 | -       | Rosano Vasconcelos | 14/11/2023 17:36 | teste    | -      | BEB-1      | 10:43 | 49:42 | -10:13 |



@Cenario20
@Manual
@PainelOMs
Cenario: Filtrar ordens de manutenção 
E esteja logado ao Services Web    
E clicar "Painel"
E clicar "Painel OMs"
Quando clicar "Filtro"
E selecionar os "Dados"
E clicar "Filtrar"
Entao exibe dados filtrados



