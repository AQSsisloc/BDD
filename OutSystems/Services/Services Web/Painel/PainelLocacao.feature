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
Cenario: Remessa aguardando aprovação
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
Esquema do Cenario: Remessa aprovada 
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
Esquema do Cenario: Fazer expedição  
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
E não apresenta registro no painel do Services Web

Exemplos:
| StatusRemessa           |
| Nota de remessa a gerar |



@Cenario8
@Manual
@PainelRemessa
Esquema do Cenario: Gerar nota de remessa
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Nota de remessa a gerar" 
E clicar "Gerar nota de Remessa"
E seleciona opção
E clicar "Ok"
Entao grava no Sisloc o <StatusRemessa> 
E não apresenta registro no painel do Services Web

Exemplos:
| StatusRemessa     |
| Remessa concluída |



@Cenario9
@Manual
@PainelRemessa
Esquema do Cenario: Estornar Nota Remessa  
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Remessa concluída"
E clicar "Estornar nota Remessa"
E clicar "Sim"
Entao grava no Sisloc o <StatusRemessa> 
E não apresenta registro no painel do Services Web

Exemplos:
| StatusRemessa           |
| Nota de remessa a gerar |



@Cenario10
@Manual
@PainelRemessa
Esquema do Cenario: Estornar expedição 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Remessa"
E esteja com status "Nota de remessa a gerar"
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



@Cenario11
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



@Cenario12
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


@Cenario13
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



@Cenario14
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


@Cenario15
@Manual
@PainelRemessa
Cenario: Previsão atrasada 
Dado esteja logado ao Services Web 
E esteja com usuário funcionário  
Quando clicar "Painel"
E clicar "Painel Locação"
E clicar "Previsão" estiver atrasada 
Entao aplica cor vermelha nas palavras do painel "Máquinas/Equipamentos Saindo"



@Cenario16
@Manual
@PainelRemessa
Cenario: Previsão futura  
Dado esteja logado ao Services Web 
E esteja com usuário funcionário  
Quando clicar "Painel"
E clicar "Painel Locação"
E clicar "Previsão" for futura 
Entao aplica cor preta nas palavras do painel "Máquinas/Equipamentos Saindo"



@Cenario17
@Manual
@PainelDevolução
Esquema do Cenario: Devolução aguardando aprovação
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



@Cenario18
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



@Cenario19
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



@Cenario20
@Manual
@PainelDevolução 
Esquema do Cenario: Fazer recepção  
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Ag. devolução"
E clicar "Fazer Recepção"
E preencher os dados 
E clicar "Gravar"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E não apresenta registro no painel do Services Web
 
Exemplos:
| StatusDevolucao    |
| Devolução conclída |



@Cenario21
@Manual
@PainelDevolução 
Esquema do Cenario: Gerar Nota Devolução 
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Devolução concluída"
E clicar "Gerar Nota Devolução"
E preencher os dados 
E clicar "Ok"
Entao grava no Sisloc o <StatusDevolucao>
E não apresenta registro no painel no Services Web
 
Exemplos:
| StatusDevolucao    |
| Devolução conclída |



@Cenario22
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar Nota Devolução
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Devolução concluída"
E clicar "Extornar Nota Devolução"
E clicar "Sim"
Entao grava no Sisloc o <StatusDevolucao>
E não apresenta registro no painel do Services Web
 
Exemplos:
| StatusDevolucao           |
| Nota de devolução a gerar |



@Cenario23
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar recepção
Dado Esteja logado no Sisloc
Dado esteja logado ao Services Web 
E esteja logado como funcionário
E esteja logado no Sisloc 
E esteja logado como funcionário 
Quando clicar em "Devolução"
E esteja com status "Nota de devolução a gerar"
E clicar "Extornar Recpção"
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



@Cenario24
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



@Cenario25
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



@Cenario26
@Manual
@PainelDevolucao
Cenario: Previsão atrasada 
Dado esteja logado ao Services Web 
E esteja com usuário funcionário 
Quando clicar "Painel"
E clicar "Painel Locação"
E clicar "Previsão" estiver atrasada 
Entao aplica cor vermelha nas palavras do painel "Máquinas/Equipamentos Chegando"



@Cenario27
@Manual
@PainelDevolucao
Cenario: Previsão futura  
Dado esteja logado ao Services Web 
E esteja com usuário funcionário
Quando clicar "Painel"
E clicar "Painel Locação"
E clicar "Previsão" for futura 
Entao aplica cor preta nas palavras do painel "Máquinas/Equipamentos Chegando"



@Cenario28
@Manual
@PainelLocacao
Cenario: Desacelerar palavras no painel  
Dado esteja logado ao Services Web 
E esteja com usuário funcionário
E clicar "Painel"
E clicar "Painel Locação"
Quando clicar "Desacelerar palavaras no painel"
Entao desacelera velocidade de transição de palavras no painel do Services Web



@Cenario29
@Manual
@PainelLocacao
Cenario: Velocidade padrão painel 
Dado esteja logado ao Services Web 
E esteja com usuário funcionário
Quando clicar "Painel"
E clicar "Painel Locação"
E clicar "Velocidade padrão"
Entao aplica velocidade padrão na transição de palavras no painel do Services Web



@Cenario30
@Manual
@PainelLocacao
Cenario: Acelerar palavras no painel  
Dado esteja logado ao Services Web 
E esteja com usuário funcionário
Quando clicar "Painel"
E clicar "Painel Locação"
E clicar "Acelerar palavaras no painel"
Entao Acelera velocidade de transição de palavras no painel do Services Web



@Cenario31
@Manual
@PainelLocacao
Cenario: Atualizar os dados manualmente 
Dado esteja logado ao Services Web 
E esteja com usuário funcionário 
Quando clicar "Painel"
E clicar "Painel Locação"
E clicar "Atualizar os dados manualmente"
Entao atualiza os registros do painel do Services Web



@Cenario32
@Manual
@PainelLocacao
Cenario: Modo escuro 
E esteja logado ao Services Web 
E esteja com usuário funcionário 
Quando clicar "Painel"
E clicar "Painel Locação"
E clicar "Dark mode"
Entao muda cor do tema do painel do Services Web
