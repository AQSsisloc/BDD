#language: pt
#PainelLocacao
#ServicesWeb


Funcionalidade: Exibir em tempo real as remessas e devoluções 
  Como um usuário do Services Web
  Eu quero visualizar o fluxo de remessas e devoluções
  Para facilitar gerenciamento de remessas e devoluções 
 

Dado Esteja logado no Sisloc


@Cenario1
@Manual
@PainelRemessa
Esquema do Cenario: Remessa aguardando aprovação
E esteja logado como funcionário    
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E esteja logado ao Services Web
Quando esteja <StatusRemessa> 
Entao não apresenta registro no painel 

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.aprovação  |



@Cenario2
@Manual
@PainelRemessa
Esquema do Cenario: Remessa aprovada 
E esteja logado como funcionário     
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E esteja logado ao Services Web
Quando clicar "Aprovar Remessa"  
Entao grava <StatusRemessa> 
E apresenta registro no painel 

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.reserva    |



@Cenario3
@Manual
@PainelRemessa
Esquema do Cenario: Indicar operador 
E esteja logado como funcionário      
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <StatusRemessa_1> 
E esteja logado ao Services Web
Quando quando clicar "Indicar Operador"
E clicar "Ok"
E selecionar <Operador> 
E clicar "Ok"
Entao grava <StatusRemessa_2>
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa_1 | Operador | StatusRemessa_2 |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.reserva      | Admin    | Ag.envio        |



@Cenario4
@Manual
@PainelRemessa
Esquema do Cenario: Programar entrega 
E esteja logado como funcionário      
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <StatusRemessa>
E tenha <Operador> 
E esteja logado ao Services Web
Quando quando clicar "Programar Entrega"
E selecionar <Motorista> 
E clicar "Ok"
Entao grava os dados 
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa | Operador | Motorista |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio      | Admin    | Admin     |



@Cenario5
@Manual
@PainelRemessa
Esquema do Cenario: Selecionar Patrimônio 
E esteja logado como funcionário       
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <StatusRemessa>
E tenha <Operador> 
E tenha <Motorista> 
E esteja logado ao Services Web
Quando quando clicar "Selecionar Patrimônio"
E selecionar os itens 
E clicar "Grava"
Entao grava os dados
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa | Operador | Motorista |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio      | Admin    | Admin     |



@Cenario6
@Manual
@PainelRemessa
Esquema do Cenario: Reservar Patrimônio  
E esteja logado como funcionário    
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <StatusRemessa>
E tenha <Operador> 
E tenha <Motorista>
E esteja logado ao Services Web 
Quando quando clicar "Reservar Patrimônio"
E clicar "Sim"
Entao grava os dados
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa | Operador | Motorista |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio      | Admin    | Admin     |



@Cenario7
@Manual
@PainelRemessa
Esquema do Cenario: Fazer expedição  
E esteja logado como funcionário   
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <StatusRemessa_1>
E tenha <Operador> 
E tenha <Motorista> 
E esteja logado ao Services Web
Quando quando clicar "Fazer expedição"
E clicar "OK"
E selecionar equipamentos 
E clicar "Gravar"
E confirmar "Sim"
Entao grava <StatusRemessa_2>
E não apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa_1 | Operador | Motorista | StatusRemessa_2         |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio        | Admin    | Admin     | Nota de remessa a gerar |



@Cenario8
@Manual
@PainelRemessa
Esquema do Cenario: Gerar nota de remessa
E esteja logado como funcionário     
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <StatusRemessa_1>
E tenha <Operador> 
E tenha <Motorista> 
E esteja logado ao Services Web
Quando quando clicar "Gerar Nota de Remessa"
E clicar "OK"
Entao gera nota de remessa 
E grava <StatusRemessa_2>
E não apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa_1         | Operador | Motorista | StatusRemessa_2   |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Nota de remessa a gerar | Admin    | Admin     | Remessa Concluída |



@Cenario9
@Manual
@PainelRemessa
Esquema do Cenario: Estornar Nota Remessa  
E esteja logado como funcionário
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <StatusRemessa_1>
E tenha <Operador> 
E tenha <Motorista> 
E esteja logado ao Services Web
Quando quando clicar "Estornar Nota Remessa"
E clicar "Sim"
Entao grava <StatusRemessa_2>
E não apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRmessa_1    | Operador | Motorista | StatusRemessa_2         |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Remessa Concluída | Admin    | Admin     | Nota de remessa a gerar |



@Cenario10
@Manual
@PainelRemessa
Esquema do Cenario: Estornar expedição 
E esteja logado como funcionário 
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <StatusRemessa_1>
E tenha <Operador> 
E tenha <Motorista> 
E esteja logado ao Services Web
Quando quando clicar "Estornar expedição"
E clicar "Sim"
Entao grava <StatusRemessa_2>
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa_1         | Operador | Motorista | StatusRemessa_2 |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Nota de remessa a gerar | Admin    | Admin     | Ag.envio        |



@Cenario11
@Manual
@PainelRemessa
Esquema do Cenario: Estornar reserva patrimônio 
E esteja logado como funcionário 
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <StatusRemessa_1>
E tenha <Operador> 
E tenha <Motorista> 
E esteja logado ao Services Web
Quando quando clicar "Estornar reserva patrimônio"
E clicar "Sim"
Entao grava <StatusRemessa_2> 
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status_1 | Operador | Motorista | Status_2 |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio | Admin    | Admin     | Ag.envio |



@Cenario12
@Manual
@PainelRemessa
Esquema do Cenario: Estornar programar entrega
E esteja logado como funcionário   
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <StatusRemessa>
E tenha <Operador>  
E tenha <Motorista>
E esteja logado ao Services Web
Quando quando clicar "Estornar reserva patrimônio"
E clicar "Sim"
Entao grava os dados
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa | Operador | Motorista |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio      | Admin    | Admin     |


@Cenario13
@Manual
@PainelRemessa
Esquema do Cenario: Estornar operador
E esteja logado como funcionário
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <StatusRemessa_1>
E tenha <Operador> 
E esteja logado ao Services Web
Quando quando clicar "Estornar operador"
E clicar "Sim"
Entao grava <StatusRemessa_2>
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa_1 | Operador | StatusRemessa_2 |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio        | Admin    | Ag.reserva      |



@Cenario14
@Manual
@PainelRemessa
Esquema do Cenario: Estornar aprovação
E esteja logado como funcionário
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <StatusRemessa_1>
E esteja logado ao Services Web
Quando quando clicar "Estornar aprovação"
E clicar "Sim"
Entao grava <StatusRemessa_2>
E não apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | StatusRemessa_1 | StatusRemessa_2 |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.reserva      | Ag.aprovação    |



@Cenario15
@Manual
@PainelDevolução 
Esquema do Cenario: Aprovar devolução
E esteja logado como funcionário
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <StatusDevolucao_1>
E esteja logado ao Services Web
Quando quando clicar "Aprovar Devolução"
E clicar "Sim"
Entao grava <StatusDevolucao_2>
E apresenta registro no painel

Exemplos:
| Devolucao | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | StatusDevolucao_1 | StatusDevolucao_2 |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Ag.aprovação      | Ag.devolução      |



@Cenario16
@Manual
@PainelDevolução 
Esquema do Cenario: Programar retirada 
E esteja logado como funcionário
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <StatusDevolucao_1>
E esteja logado ao Services Web
Quando quando clicar "Programar Retirada"
E selecionar <Motorista>
E clicar "Ok"
Entao grava <StatusDevolucao_2>
E apresenta registro no painel

Exemplos:
| Devolucao | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | StatusDevolucao_1 | Motorista | StatusDevolucao_2 |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Ag.devolução      | Admin     | Ag.devolução      |



@Cenario17
@Manual
@PainelDevolução 
Esquema do Cenario: Fazer recepção  
E esteja logado como funcionário
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <StatusDevolucao_1>
E tenha <Motorista>
E esteja logado ao Services Web
Quando quando clicar "Fazer recepçao"
E clicar "Ok"
E selecionar os itens 
E clicar "Grava"
E clciar "Sim"
Entao grava <StatusDevolucao_2>
E não apresenta registro no painel

Exemplos:
| Devolucao | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | StatusDevolucao_1 | Motorista | StatusDevolucao_2   |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Ag.devolução      | Admin     | Devolução concluída |



@Cenario18
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar recepção 
E esteja logado como funcionário 
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <StatusDevolucao_1>
E tenha <Motorista>
E esteja logado ao Services Web
Quando quando clicar "Estornar recepçao"
E clicar "Sim"
Entao grava <StatusDevolucao_2>
E apresenta registro no painel

Exemplos:
| Devolucao | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | StatusDevolucao_1   | Motorista | StatusDevolucao_2 |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Devolução concluída | Admin     | Ag.devolução      |



@Cenario19
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar programação retirada  
E esteja logado como funcionário 
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <StatusRemessa>
E esteja logado ao Services Web
Quando quando clicar "Estornar prog. retirada"
E clicar "Sim"
Entao grava os dados
E apresenta registro no painel

Exemplos:
| Devolucao | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | StatusRemessa |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Ag.devolução  |



@Cenario20
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar aprovação   
E esteja logado como funcionário
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <StatusRemessa_1>
E esteja logado ao Services Web
Quando quando clicar "Estornar aprovação"
E clicar "Sim"
Entao grava <StatusRemessa_2>
E não apresenta registro no painel

Exemplos:
| Devolucao | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | StatusRemessa_1 | StatusRemessa_2 |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Ag.devolução    | Ag.aprovação    |



@Cenario21
@Manual
@PainelLocacao
Cenario: Desacelerar palavras no painel  
E esteja logado ao Services Web 
E clicar "Painel"
E clicar "Painel Locação"
Quando quando clicar "Desacelerar palavaras no painel"
Entao desacelera velocidade de transição de palavras no painel 



@Cenario22
@Manual
@PainelLocacao
Cenario: Velocidade padrão painel 
E esteja logado ao Services Web 
E clicar "Painel"
E clicar "Painel Locação"
Quando quando clicar "Velocidade padrão"
Entao aplica velocidade padrão na transição de palavras no painel 



@Cenario23
@Manual
@PainelLocacao
Cenario: Acelerar palavras no painel  
E esteja logado ao Services Web 
E clicar "Painel"
E clicar "Painel Locação"
Quando quando clicar "Acelerar palavaras no painel"
Entao Acelera velocidade de transição de palavras no painel 



@Cenario24
@Manual
@PainelLocacao
Cenario: Atualizar os dados manualmente 
E esteja logado ao Services Web 
E clicar "Painel"
E clicar "Painel Locação"
Quando quando clicar "Atualizar os dados manualmente"
Entao atualiza os registros do painel 



@Cenario25
@Manual
@PainelLocacao
Cenario: Modo escuro 
E esteja logado ao Services Web 
E clicar "Painel"
E clicar "Painel Locação"
Quando quando clicar "Dark mode"
Entao muda cor do tema do painel 
 
