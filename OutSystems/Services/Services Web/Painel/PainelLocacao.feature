#language: pt
#PainelLocacao
#ServicesWeb


Funcionalidade: Exibir em tempo real as remessas e devoluções 
  Como um usuário do Services Web
  Eu quero visualizar o fluxo de remessas e devoluções
  Para facilitar gerenciamento de remessas e devoluções 
 

Dado Esteja logado no Services Web 


@Cenario1
@Manual
@PainelRemessa
Esquema do Cenario: Remessa aguardando aprovação    
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
Quando esteja com <Status> 
Entao não apresenta registro no painel 

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status       |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.aprovação |



@Cenario2
@Manual
@PainelRemessa
Esquema do Cenario: Remessa aprovada     
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
Quando clicar "Aprovar Remessa"  
Entao grava <Status> 
E apresenta registro no painel 

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status     |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.reserva |



@Cenario3
@Manual
@PainelRemessa
Esquema do Cenario: Indicar operador      
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <Status_1> 
Quando quando clicar "Indicar Operador"
E clicar "Ok"
E selecionar <Operador> 
E clicar "Ok"
Entao grava <Status_2>
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status_1   | Operador | Status_2 |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.reserva | Admin    | Ag.envio |



@Cenario4
@Manual
@PainelRemessa
Esquema do Cenario: Programar entrega       
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <Status>
E tenha <Operador> 
Quando quando clicar "Programar Entrega"
E selecionar <Motorista> 
E clicar "Ok"
Entao grava os dados 
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status   | Operador | Motorista |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio | Admin    | Admin     |



@Cenario5
@Manual
@PainelRemessa
Esquema do Cenario: Selecionar Patrimônio      
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <Status>
E tenha <Operador> 
E tenha <Motorista> 
Quando quando clicar "Selecionar Patrimônio"
E selecionar os itens 
E clicar "Grava"
Entao grava os dados
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status   | Operador | Motorista |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio | Admin    | Admin     |



@Cenario6
@Manual
@PainelRemessa
Esquema do Cenario: Reservar Patrimônio      
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <Status>
E tenha <Operador> 
E tenha <Motorista> 
Quando quando clicar "Reservar Patrimônio"
E clicar "Sim"
Entao grava os dados
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status   | Operador | Motorista |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio | Admin    | Admin     |



@Cenario7
@Manual
@PainelRemessa
Esquema do Cenario: Fazer expedição     
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <Statu_1>
E tenha <Operador> 
E tenha <Motorista> 
Quando quando clicar "Fazer expedição"
E clicar "OK"
E selecionar equipamentos 
E clicar "Gravar"
E confirmar "Sim"
Entao grava <Status_2>
E não apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status_1 | Operador | Motorista | Status_2                |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio | Admin    | Admin     | Nota de remessa a gerar |



@Cenario8
@Manual
@PainelRemessa
Esquema do Cenario: Gerar nota de remessa    
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <Statu_1>
E tenha <Operador> 
E tenha <Motorista> 
Quando quando clicar "Gerar Nota de Remessa"
E clicar "OK"
Entao gera nota de remessa 
E grava <Status_2>
E não apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status_1                | Operador | Motorista | Status_2          |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Nota de remessa a gerar | Admin    | Admin     | Remessa Concluída |



@Cenario9
@Manual
@PainelRemessa
Esquema do Cenario: Estornar Nota Remessa   
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <Statu_1>
E tenha <Operador> 
E tenha <Motorista> 
Quando quando clicar "Estornar Nota Remessa"
E clicar "Sim"
Entao grava <Status_2>
E não apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status_1          | Operador | Motorista | Status_2                |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Remessa Concluída | Admin    | Admin     | Nota de remessa a gerar |



@Cenario10
@Manual
@PainelRemessa
Esquema do Cenario: Estornar expedição  
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Motorista>
E tenha <Itens> 
E tenha <Statu_1>
E tenha <Operador> 
E tenha <Motorista> 
Quando quando clicar "Estornar expedição"
E clicar "Sim"
Entao grava <Status_2>
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status_1                | Operador | Motorista | Status_2 |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Nota de remessa a gerar | Admin    | Admin     | Ag.envio |



@Cenario11
@Manual
@PainelRemessa
Esquema do Cenario: Estornar reserva patrimônio 
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <Status>
E tenha <Operador> 
E tenha <Motorista> 
Quando quando clicar "Estornar reserva patrimônio"
E clicar "Sim"
Entao grava os dados
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status_1                | Operador | Motorista | Status_2 |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Nota de remessa a gerar | Admin    | Admin     | Ag.envio |



@Cenario12
@Manual
@PainelRemessa
Esquema do Cenario: Estornar programar entrega  
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <Status>
E tenha <Operador>  
E tenha <Motorista>
Quando quando clicar "Estornar reserva patrimônio"
E clicar "Sim"
Entao grava os dados
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status_1                | Operador | Motorista | Status_2 |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Nota de remessa a gerar | Admin    | Admin     | Ag.envio |



@Cenario13
@Manual
@PainelRemessa
Esquema do Cenario: Estornar operador
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <Status_1>
E tenha <Operador> 
Quando quando clicar "Estornar operador"
E clicar "Sim"
Entao grava <Status_2>
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status_1 | Operador | Status_2   |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.envio | Admin    | Ag.reserva |



@Cenario14
@Manual
@PainelRemessa
Esquema do Cenario: Estornar aprovação
E contenha no Sisloc <Remessa>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <Status_1>
Quando quando clicar "Estornar aprovação"
E clicar "Sim"
Entao grava <Status_2>
E não apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens                               | Status_1   | Status_2     |
| 100332-09 | 30/10/2023 13:25 | Contagem | teste...teste...teste | 28 Dias     | 2 Bebedouro, 1 Bomba de mangote 1,5 | Ag.reserva | Ag.aprovação |



@Cenario15
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar aprovação
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <Status_1>
Quando quando clicar "Aprovar Devolução"
E clicar "Sim"
Entao grava <Status_2>
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | Status_1     | Status_2     |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Ag.aprovação | Ag.devolução |



@Cenario16
@Manual
@PainelDevolução 
Esquema do Cenario: Programar retirada 
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <Status_1>
Quando quando clicar "Programar Retirada"
E selecionar <Motorista>
E clicar "Ok"
Entao grava <Status_2>
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | Status_1     | Motorista | Status_2     |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Ag.devolução | Admin     | Ag.devolução |



@Cenario17
@Manual
@PainelDevolução 
Esquema do Cenario: Fazer recepção  
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <Status_1>
E tenha <Motorista>
Quando quando clicar "Fazer recepçao"
E clicar "Ok"
E selecionar os itens 
E clicar "Grava"
E clciar "Sim"
Entao grava <Status_2>
E não apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | Status_1     | Motorista | Status_2            |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Ag.devolução | Admin     | Devolução concluída |



@Cenario18
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar recepção  
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <Status_1>
E tenha <Motorista>
Quando quando clicar "Estornar recepçao"
E clicar "Sim"
Entao grava <Status_2>
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | Status_1            | Motorista | Status_2     |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Devolução concluída | Admin     | Ag.devolução |



@Cenario19
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar programação retirada   
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <Status>
Quando quando clicar "Estornar prog. retirada"
E clicar "Sim"
Entao grava os dados
E apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | Status       |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Ag.devolução |



@Cenario20
@Manual
@PainelDevolução 
Esquema do Cenario: Estornar aprovação   
E contenha no Sisloc <Devolucao>
E tenha <Previsao> 
E tenha <Cidade> 
E tenha <Cliente>
E tenha <Observacao> 
E tenha <TipoLocacao>
E tenha <Itens> 
E tenha <Status_1>
Quando quando clicar "Estornar aprovação"
E clicar "Sim"
Entao grava <Status_2>
E não apresenta registro no painel

Exemplos:
| Remessa   | Previsao         | Cidade   | Observacao            | TipoLocacao | Itens       | Status_1     | Status_2     |
| 100332-06 | 30/10/2023 14:08 | Contagem | teste...teste...teste | 28 Dias     | 1 Bebedouro | Ag.devolução | Ag.aprovação |
