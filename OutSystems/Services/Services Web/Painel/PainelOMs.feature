#language: pt
#PainelOMs
#ServicesWeb


Funcionalidade: Exibir em tempo real as ordens de manutenção e seus respectivos status e atualizações 
  Como um usuário do Services Web
  Eu quero visualizar o fluxo de ordens de manutenção 
  Para facilitar gerenciamento de ordens de manutenção  
 

Dado Esteja logado no Sisloc


@Cenario1
@Manual
@PainelOMs
Esquema do Cenario: Oficina aguardando liberação do equipamento
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM>
E esteja logado ao Services Web
Quando clicar "Iniciar Levantamento" 
Entao grava <StatusOficina_2> 

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1                          | StatusOM | StatusOficina_2                                   |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina aguarda liberação do equipamento | Pendente | Oficina fazendo levantamento dos serviços e peças |


 
@Cenario2
@Manual
@PainelOMs
Esquema do Cenario: Oficina aguardando autorização para execução
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM>
E esteja logado ao Services Web
Quando clicar "Conlcuir Levantamento"
E clicar "Ok" 
Entao grava <StatusOficina_2> 

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1                                   | StatusOM | StatusOficina_2                           |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina fazendo levantamento dos serviços e peças | Pendente | Oficina aguarda autorização para execução |



@Cenario3
@Manual
@PainelOMs
Esquema do Cenario: Oficina aguardando autorização para execução sem defeito
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E esteja logado ao Services Web
Quando clicar "Conlcuir Levantamento"
E marcar "Equipamento em perfeito estado de conservação e uso" 
E clicar "Ok"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2>

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1                                   | StatusOM | StatusOficina_2                                     | StatusOM_2 |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina fazendo levantamento dos serviços e peças | Pendente | Equipamento em perfeito estado de conservação e uso | Concluído  |



@Cenario4
@Manual
@PainelOMs
Esquema do Cenario: Autorizar Faturamento 
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM>
E esteja logado ao Services Web
Quando clicar "Autorizar faturamento"
E preencher "Quem autorizou preencher os faturamento" 
E clicar "Ok"
Entao grava <StatusOficina_2> 

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1                           | StatusOM | StatusOficina_2                           |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina aguarda autorização para execução | Pendente | Oficina aguarda autorização para execução |



@Cenario5
@Manual
@PainelOMs
Esquema do Cenario: Autorizar Execução 
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E esteja logado ao Services Web
Quando clicar "Autorizar execução"
E preencher "Previsão Entrega" 
E clicar "Ok"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1                           | StatusOM_1 | StatusOficina_2                        | StatusOM_2     |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina aguarda autorização para execução | Pendente   | Oficina executando ordem de manutenção | Em andamento |



@Cenario6
@Manual
@PainelOMs
Esquema do Cenario: Programar Execução 
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E esteja logado ao Services Web
Quando clicar "Programar execução"
E selecionar responsável <Tecnico> 
E preencher os dados 
E clicar "Ok"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 
E grava <StatusPainel>

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1                        | StatusOM_1   | Tecnico  | StatusOficina_2                        | StatusOM_2     | StatusPainel |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina executando ordem de manutenção | Em andamento | 1-Rosano | Oficina executando ordem de manutenção | Em andamento | Executando   |



@Cenario7
@Manual
@PainelOMs
Esquema do Cenario: Concluir Execução 
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E tenha <Tecnico>
E esteja logado ao Services Web
Quando clicar "Concluir Execução"
E preencher os dados 
E clicar "Ok"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 
E grava <StatusPainel>

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1                        | StatusOM_1   | Tecnico  | StatusOficina_2          | StatusOM_2 | StatusPainel |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina executando ordem de manutenção | Em andamento | 1-Rosano | Oficina concluiu serviço | Concluído  | Concluído    |



@Cenario8
@Manual
@PainelOMs
Esquema do Cenario: Gerar NF Fatura
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E tenha <Tecnico>
E esteja logado ao Services Web
Quando clicar "Gerar NF Fatura"
E preenhcer os dados
E clicar "Ok"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 
E grava <StatusPainel>

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1          | StatusOM_1 | Tecnico  | StatusOficina_2          | StatusOM_2 | StatusPainel |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina concluiu serviço | Concluído  | 1-Rosano | Oficina concluiu serviço | Concluído  | Concluído    |



@Cenario9
@Manual
@PainelOMs
Esquema do Cenario: Entregar equipamento 
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E tenha <Tecnico>
E esteja logado ao Services Web
Quando clicar "Entregar Equipamento"
E clicar "Sim"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 
E grava <StatusPainel>

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1          | StatusOM_1 | Tecnico  | StatusOficina_2      | StatusOM_2 | StatusPainel   |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina concluiu serviço | Concluído  | 1-Rosano | Equipamento Entregue | Concluído  | Eqpto Entregue |



@Cenario10
@Manual
@PainelOMs
Esquema do Cenario: Encerrar
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E tenha <Tecnico>
E esteja logado ao Services Web
Quando clicar "Encerrar"
E clicar "Sim"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 
E grava <StatusPainel>

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1      | StatusOM_1 | Tecnico  | StatusOficina_2 | StatusOM_2 | StatusPainel |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Equipamento Entregue | Concluído  | 1-Rosano | F-Fechadas      | Concluído  | -            |



@Cenario11
@Manual
@PainelOMs
Esquema do Cenario: Estornar encerramento
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E tenha <Tecnico>
E esteja logado ao Services Web
Quando clicar "Estornar encerramento"
E clicar "Sim"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 
E grava <StatusPainel>

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1 | StatusOM_1 | Tecnico  | StatusOficina_2      | StatusOM_2 | StatusPainel   |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | F-Fechadas      | Concluído  | 1-Rosano | Equipamento Entregue | Concluído  | Eqpto Entregue |



@Cenario12
@Manual
@PainelOMs
Esquema do Cenario: Estornar entrega
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E tenha <Tecnico>
E esteja logado ao Services Web
Quando clicar "Estornar entrega"
E clicar "Sim"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 
E grava <StatusPainel>

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1      | StatusOM_1 | Tecnico  | StatusOficina_2          | StatusOM_2 | StatusPainel |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Equipamento Entregue | Concluído  | 1-Rosano | Oficina concluiu serviço | Concluído  | -            |



@Cenario12
@Manual
@PainelOMs
Esquema do Cenario: Estornar NF Fatura
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E tenha <Tecnico>
E esteja logado ao Services Web
Quando clicar "Estornar NF Fatura"
E clicar "Sim"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 
E grava <StatusPainel>

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1      | StatusOM_1 | Tecnico  | StatusOficina_2          | StatusOM_2 | StatusPainel |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Equipamento Entregue | Concluído  | 1-Rosano | Oficina concluiu serviço | Concluído  | -            |



@Cenario13
@Manual
@PainelOMs
Esquema do Cenario: Estornar conclusão Execução
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E tenha <Tecnico>
E esteja logado ao Services Web
Quando clicar "Estornar Conclusão Execução"
E clicar "Sim"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 
E grava <StatusPainel>

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1      | StatusOM_1 | Tecnico  | StatusOficina_2                        | StatusOM_2   | StatusPainel |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Equipamento Entregue | Concluído  | 1-Rosano | Oficina executando ordem de manutenção | Em andamento | -            |



@Cenario13
@Manual
@PainelOMs
Esquema do Cenario: Estornar programação
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E tenha <Tecnico>
E esteja logado ao Services Web
Quando clicar "Estornar Programação"
E clicar "Sim"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 
E grava <StatusPainel>

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1      | StatusOM_1 | Tecnico  | StatusOficina_2                        | StatusOM_2   | StatusPainel |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Equipamento Entregue | Concluído  | 1-Rosano | Oficina executando ordem de manutenção | Em andamento | -            |



@Cenario14
@Manual
@PainelOMs
Esquema do Cenario: Estornar autorização de execução 
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E esteja logado ao Services Web
Quando clicar "Estornar Autorização Execução"
E clicar "Sim"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1                        | StatusOM_1  | StatusOficina_2                           | StatusOM_2 | 
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina executando ordem de manutenção | Concluído   | Oficina aguarda autorização para execução | Pendente   | 



@Cenario15
@Manual
@PainelOMs
Esquema do Cenario: Estornar Autorização Faturamento
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E esteja logado ao Services Web
Quando clicar "Estornar Autoriz. Faturamneto"
E clicar "Sim"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1                        | StatusOM_1 | StatusOficina_2                           | StatusOM_2 | 
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina executando ordem de manutenção | Concluído  | Oficina aguarda autorização para execução | Pendente   | 



@Cenario16
@Manual
@PainelOMs
Esquema do Cenario: Estornar Conclusão Levantamento
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E esteja logado ao Services Web
Quando clicar "Estornar Conclusão Levantamento"
E clicar "Sim"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1                        | StatusOM_1 | StatusOficina_2                                   | StatusOM_2 |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina executando ordem de manutenção | Concluído  | Oficina fazendo levantamento dos serviços e peças | Pendente   |



@Cenario17
@Manual
@PainelOMs
Esquema do Cenario: Estornar Início levantamento
E esteja logado como funcionário    
E contenha no Sisloc <OM> 
E tenha <Cliente> 
E tenha <Problema> 
E tenha <Patrimonio>
E tenha <StatusOficina_1>
E tenha <StatusOM_1>
E esteja logado ao Services Web
Quando clicar "Estornar Início Levantamento"
E clicar "Sim"
Entao grava <StatusOficina_2> 
E grava <StatusOM_2> 

Exemplos:
| OM     | Cliente             | Problema | Patrimonio | StatusOficina_1                                   | StatusOM_1 | StatusOficina_2                          | StatusOM_2 |
| 020781 | Rosano Vasnconcelos | teste    | PG-10      | Oficina fazendo levantamento dos serviços e peças | Concluído  | Oficina aguarda liberação do equipamento | Pendente   |



@Cenario18
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



