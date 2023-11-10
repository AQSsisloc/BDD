#language: pt
#PainelLocacao
#ServicesWeb


Funcionalidade: Exibir em tempo real as remessas e devoluções 
  Como um usuário do Services Web
  Eu quero visualizar o fluxo de remessas e devoluções
  Para facilitar gerenciamento de remessas e devoluções 
 

@Cenario1
@Manual
@PainelRemessa
Cenario: Cadastrar remessa aguardando aprovação
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao salva o registro da remessa
E não apresenta registro no painel no Services Web



@Cenario2
@Manual
@PainelRemessa
Esquema do Cenario: Cadastrar remessa e aprovar
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E preencher os campos disponíveis
E clicar em "Salvar"
E clicar "Aprovar Remessa"  
Entao grava no Sisloc o <StatusRemessa> 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao> 
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               |
| Ag.envio      | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 |



@Cenario3
@Manual
@PainelRemessa
Esquema do Cenario: Indicar operador 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. envio (sem operador)"
E clicar "Indicar Operador"
E preencher os dados 
E clicar "Ok"
Entao grava no Sisloc o <StatusRemessa> 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa           | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               |
| Ag.envio (com operador) | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 |



@Cenario4
@Manual
@PainelRemessa
Esquema do Cenario: Programar entrega 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. envio (com operador)"
E clicar "Programar Entrega"
E preencher os dados 
E clicar "Ok"
Entao grava no Sisloc o <StatusRemessa> 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Motorista>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa           | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Motorista |
| Ag.envio (com operador) | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Admin     |



@Cenario5
@Manual
@PainelRemessa
Esquema do Cenario: Selecionar Patrimônio 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. envio (com operador)"
E clicar "Selecionar Patrim."
E preencher os dados 
E clicar "Gravar"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa> 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Motorista>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa           | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Motorista |
| Ag.envio (com operador) | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Admin     |



@Cenario6
@Manual
@PainelRemessa
Esquema do Cenario: Reservar Patrimônio 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. envio (com operador)"
E clicar "Reservar Patrim."
E preencher os dados 
E clicar "Gravar"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa> 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Motorista>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa           | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Motorista |
| Ag.envio (com operador) | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Admin     |



@Cenario7
@Manual
@PainelRemessa
Esquema do Cenario: Fazer expedição com conclusão de Pedido de Movimentação de Saída automático 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. envio (com operador)"
E clicar "Fazer Expedição"
E selecionar os patrimônios 
E clicar "Gravar"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa>
E conclui Pedido de Movimentação no Sisloc
E realiza movimentação de estoque do equipamento
E não apresenta registro no painel do Services Web

Exemplos:
| StatusRemessa           |
| Nota de remessa a gerar |



@Cenario08
@Manual
@PainelRemessa
Esquema do Cenario: Estornar expedição com Pedido de Movimentação de Saída automático
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Nota de remessa a gerar"
E clicar "Estornar expedição"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa>
E realiza movimentação de estoque do equipamento  
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Motorista>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa           | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Motorista |
| Ag.envio (com operador) | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Admin     |



@Cenario9
@Manual
@PainelRemessa
Esquema do Cenario: Fazer expedição com conclusão de Pedido de Movimentação de Saída manual 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. envio (com operador)"
E clicar "Fazer Expedição"
Entao grava no Sisloc o <StatusRemessa> 
E autoriza Pedido de Movimentação de Saída no Sisloc 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Motorista>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa    | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Motorista |
| Ag. movimentação | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Admin     |



@Cenario10
@Manual
@PainelRemessa
Esquema do Cenario: Efetuar movimentação de Saída pelo atalho no menu lateral
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. movimentação"
E clicar "Efetuar movimentação"
E selecionar o almoxarifado
E selecionar o patrimônio
E clicar "Gravar"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa>
E conclui Pedido de Movimentação no Sisloc
E realiza movimentação de estoque do equipamento
E não apresenta registro no painel do Services Web

Exemplos:
| StatusRemessa     |
| Remessa concluída |



@Cenario11
@Manual
@PainelRemessa
Esquema do Cenario: Efetuar movimentação pelo Pedido de Movimentação  de Saída
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. movimentação"
E clicar "Efetuar movimentação"
E clicar no "Raio" em "Dt. Saída"
E clicar "Pedido Movimentação"
E clicar "Efetuar movimentação"
E selecionar o almoxarifado
E selecionar o patrimônio
E clicar "Gravar"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa>
E conclui Pedido de Movimentação de Saída no Sisloc
E realiza movimentação de estoque do equipamento
E não apresenta registro no painel do Services Web

Exemplos:
| StatusRemessa     |
| Remessa concluída |



@Cenario12
@Manual
@PainelRemessa
Esquema do Cenario: Estornar movimentação pelo Pedido de Movimentação  de Saída
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Remessa concluída"
E esteja com Pedido Movimentação de Saída concluído
E clicar no "Raio" em "Dt. Saída"
E clicar "Pedido Movimentação"
E clicar "Estornar TODAS as movimentações"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa>
E realiza movimentação de estoque do equipamento  
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Motorista>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa    | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Motorista |
| Ag. movimentação | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Admin     |



@Cenario13
@Manual
@PainelRemessa
Esquema do Cenario: Estornar movimentação pelo atalho no menu lateral com Pedido de Movimentação de Saída manual
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status Remessa concluída
E clicar "Estornar movimentação"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa>
E realiza movimentação de estoque do equipamento  
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Motorista>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa    | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Motorista |
| Ag. movimentação | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Admin     |



@Cenario14
@Manual
@PainelRemessa
Esquema do Cenario: Estornar expedição com autorização Pedido de Movimentação de Saída manual
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. movimentação"
E clicar "Estornar expedição"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa> 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Motorista>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa           | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Motorista |
| Ag.envio (com operador) | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Admin     |



@Cenario15
@Manual
@PainelRemessa
Esquema do Cenario: Estornar reserva patrimônio 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. envio (com operador)"
E clicar "Estornar Reserva patrimônio"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa> 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Motorista>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa           | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Motorista |
| Ag.envio (com operador) | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Admin     |



@Cenario16
@Manual
@PainelRemessa
Esquema do Cenario: Estornar programar entrega
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. envio (com operador)"
E clicar "Estornar Prog.Entrega"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa> 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa           | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | 
| Ag.envio (com operador) | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | 



@Cenario17
@Manual
@PainelRemessa
Esquema do Cenario: Estornar operador
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. envio (com operador)"
E clicar "Estornar Operador"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa> 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web

Exemplos:
| StatusRemessa           | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | 
| Ag.envio (sem operador) | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | 



@Cenario18
@Manual
@PainelRemessa
Esquema do Cenario: Estornar aprovação
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Ag. envio (sem operador)"
E clicar "Estornar Aprovação"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa> 
E não apresenta registro no painel do Services Web

Exemplos:
| StatusRemessa |
| Ag. aprovação |



@Cenario19
@Manual
@PainelRemessa
Esquema do Cenario: Alterar cores de acordo com a previsão 
Dado esteja logado ao Services Web 
E esteja com usuário funcionário  
Quando clicar "Painel"
E clicar "Painel Locação"
E estiver com <Previsao> 
Entao aplica <Cor> na descrição do painel de remessa 

Exemplos: 
| Previsao        | Cor      |
| Atrasada        | Vermelha |
| Dentro do prazo | Preto    |



@Cenario20
@Manual
@PainelDevolução
Esquema do Cenario: Cadastrar devolução aguardando aprovação
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava no Sisloc o <StatusDevolucao>
E não apresenta registro no painel do Services Web

Exemplos:
| StatusDevolucao |
| Ag. aprovação   |



@Cenario21
@Manual
@PainelDevolucao
Esquema do Cenario: Aprovar devolução
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Ag. aprovação"
E clicar "Aprovar Devolução"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web
 
Exemplos:
| StatusDevolucao | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       |
| Ag. devolução   | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro |



@Cenario22
@Manual
@PainelDevolução 
Esquema do Cenario: Programar retirada 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Ag. aprovação"
E clicar "Programar Retirada"
E preencher os dados 
E clicar "Ok"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web
 
Exemplos:
| StatusDevolucao | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       |
| Ag. devolução   | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro |



@Cenario23
@Manual
@PainelDevolução 
Esquema do Cenario: Fazer recepção com conclusão de Pedido de Movimentação de Entrada automático 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Ag. devolução"
E clicar "Fazer Recepção"
E selecionar o patrimônio 
E clicar "Gravar"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E conclui Pedido de Movimentação de Entrada
E realiza movimentação de estoque do equipamento 
E não apresenta registro no painel do Services Web
 
Exemplos:
| StatusDevolucao           |
| Nota de devolução a gerar |



@Cenario24
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar recepção com Pedido de Movimentação de Entrada automático
Dado Esteja logado no Sisloc
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Nota de devolução a gerar"
E clicar "Extornar Recepção"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E realiza movimentação de estoque do equipamento 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web
 
Exemplos:
| StatusDevolucao | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       |
| Ag. devolução   | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro |



@Cenario25
@Manual
@PainelDevolução 
Esquema do Cenario: Fazer recepção com Pedido de Movimentação de Entrada manual
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Ag. devolução"
E clicar "Fazer Recepção"
E selecionar o patrimônio
E clicar "Ok"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E autoriza Pedido de Movimentação de Entrada no Sisloc
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web
 
Exemplos:
| StatusDevolucao  | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       |
| Ag. movimentação | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro |



@Cenario26
@Manual
@PainelDevolução 
Esquema do Cenario: Efetuar movimentação de Entrada pelo atalho no menu lateral  
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Ag. movimentação"
E clicar "Efeturar movimentação"
E selecionar almoxarifado
E selecionar o patrimônio
E clicar "Ok"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E concluí Pedido de Movimentação de Entrada no Sisloc
E realiza movimentação de estoque do equipamento
E não apresenta registro no painel do Services Web

Exemplos:
| StatusDevolucao     |
| Devolução concluída |



@Cenario27
@Manual
@PainelDevolução 
Esquema do Cenario: Efetuar movimentação pelo Pedido de Movimentação  de Entrada
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Ag. movimentação"
E clicar no "Raio" em "Data entrada"
E clicar "Abrir Pedido Movimentação"
E clicar "Rastreamento"
E clicar "Devolução (Realizada)"
E clicar "Efetuar movimentação"
E selecionar o almoxarifado
E selecionar o patrimônio
E clicar "Gravar"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E conclui Pedido de Movimentação de Entrada no Sisloc
E realiza movimentação de estoque do equipamento
E não apresenta registro no painel do Services Web

Exemplos:
| StatusDevolucao     |
| Devolução concluída |



@Cenario28
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar movimentação pelo Pedido de Movimentação de Entrada 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Devolução concluída"
E clicar no "Raio" em "Data entrada"
E clicar "Abrir Pedido Movimentação"
E clicar "Rastreamento"
E clicar "Devolução (Realizada)"
E clicar "Estornar TODAS as Movimentações"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E realiza movimentação de estoque do equipamento 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web
 
Exemplos:
| StatusDevolucao  | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       |
| Ag. movimentação | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro |



@Cenario29
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar movimentação de Entrada pelo atalho no menu lateral 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Devolução concluída"
E clicar "Estornar Movimentação"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E realiza movimentação de estoque do equipamento 
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web
 
Exemplos:
| StatusDevolucao  | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       |
| Ag. movimentação | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro |


@Cenario30
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar recepção com Pedido de Movimentação de Entrada manual
Dado Esteja logado no Sisloc
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Ag. movimentação"
E clicar "Extornar Recepção"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web
 
Exemplos:
| StatusDevolucao | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       |
| Ag. devolução   | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro |



@Cenario31
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar Prog. Retirada  
Dado Esteja logado no Sisloc
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Ag. devolução"
E clicar "Extornar Prog. Retirada"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E apresenta <Previsao>
E apresenta <Cidade>
E apresenta <Observacao>
E apresenta <TipoLocacao>
E apresenta <Itens> no painel do Services Web
 
Exemplos:
| StatusDevolucao | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       |
| Ag. devolução   | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro |



@Cenario32
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar Aprovação
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Ag. devolução"
E clicar "Extornar Aprovação"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E não apresenta registro no painel do Services Web
 
Exemplos:
| StatusDevolucao |
| Ag. aprovação   |



@Cenario33
@Manual
@PainelDevolucao
Esquema do Cenario: Alterar cores de acordo com a previsão 
Dado esteja logado ao Services Web 
E esteja com usuário funcionário  
Quando clicar "Painel"
E clicar "Painel Locação"
E estiver com <Previsao> 
Entao aplica <Cor> na descrição do painel de devolução 

Exemplos: 
| Previsao        | Cor      |
| Atrasada        | Vermelha |
| Dentro do prazo | Preto    |



@Cenario34
@Manual
@PainelLocacao
Esquema do Cenario: Alterar velocidade de rolagem da descrição do painel 
Dado esteja logado ao Services Web 
E esteja com usuário funcionário
Quando clicar "Painel"
E clicar "Painel Locação"
E clicar <VelocidadeDescricao>
Entao altera <Velocidade> de rolagem na descrição no painel do Services Web

Exemplos:
| VelocidadeDescricao | Velocidade |
| Desacelera          | Baixa      |
| Padrão              | Normal     |
| Acelera             | Alta       |



@Cenario35
@Manual
@PainelLocacao
Cenario: Atualizar os dados manualmente 
Dado esteja logado ao Services Web 
E esteja com usuário funcionário 
Quando clicar "Painel"
E clicar "Painel Locação"
E clicar "Atualizar os dados manualmente"
Entao atualiza os registros do painel do Services Web



@Cenario36
@Manual
@PainelLocacao
Cenario: Alterar cor para modo escuro
E esteja logado ao Services Web 
E esteja com usuário funcionário 
Quando clicar "Painel"
E clicar "Painel Locação"
E clicar "Dark mode"
Entao altera cor do tema do painel do Services Web


