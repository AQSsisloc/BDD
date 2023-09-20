#language: pt
#SincroniaMobile
#ServicesMobile


Funcionalidade: Gerenciar conflitos de processos executados no Mobile 
  Como um usuário do Services Web
  Eu quero visualizar os conflitos dos processos 
  Para realizar resolução dos conflitos 


Dado Esteja logado no Services Web 


@Cenario1
@Automatizar
@SincroniaMobile
Esquema do Cenario: Pesquisar processo 
E selecionar "Sincronia Mobile"
E clicar "Pesquisa"
E digitar <Pesquisa> 
Quando clicar em "Lupa"
Entao apresenta processo  

Exemplos:
| Pesquisa |
| 17923    |



@Cenario2
@Automatizar
@SincroniaMobile
Cenario: Atualizar processos
E selecionar "Sincronia Mobile"
Quando clicar "Atualiza"
Entao atualiza processos



@Cenario3
@Automatizar
@SincroniaMobile
Esquema do Cenario: Filtrar processo 
E selecionar "Sincronia Mobile"
E clicar "Filtro"
E preencher <DescricaOrigem>
E preencher <Responsavel>
E preencher <TipOrigem> 
E preencher <DataInsercaoDe> 
E preencher <DataInsercaoAte>
E preencher <DataExecucaoDe> 
E preencher <DataExecucaoAte> 
E preencher <Status> 
Quando clicar em "Filrar"
Entao apresenta processo  

Exemplos:
| DescricaOrigem | TipOrigem | Responsavel | DataInsercaoDe   | DataInsercaoAte   | DataExecucaoDe   | DataExecucaoAte  | Status          |
| Checklist      | Checklist | Admin       | 01/09/2023 01:27 | 10/09/2023  14:24 | 10/09/2023 14:30 | 10/09/2023 14:30 | Enviado         |
| 17923          |           |             |                  |                   |                  |                  |                 |
| 17923          |           |             |                  | 07/03/2023 16:25  |                  |                  |                 |
| OM             |           |             |                  |                   |                  |                  |                 |
|                | OM        | Admin       |                  |                   |                  |                  | Ocorreu um erro |
|                |           |             |                  | 01/09/2023 11:32  |                  |                  |                 |
| Checklist      |           |             | 01/09/2023 01:26 |                   |                  |                  | Envio Pendente  |
|                |           |             |                  |                   |                  |                  |                 |
|                | Rota      |             |                  |                   | 01/07/2023 01:20 | 19/09/2023 14:21 | Enviado         |
|                |           |             |                  |                   |                  |                  | Envio pendente  |



@Cenario4
@Automatizar
@SincroniaMobile
Esquema do Cenario: Marcar "Todos"  Tipo Origem 
E selecionar "Sincronia Mobile"
E clicar "Filtro"
E parametro <Todos>
Quando clicar em "Filrar"
Entao apresenta processo  

Exemplos:
| Todos      |
| Marcado    |
| Desmarcado |



@Cenario5
@Automatizar
@SincroniaMobile
Esquema do Cenario: Marcar "Todos"  Status 
E selecionar "Sincronia Mobile"
E clicar "Filtro"
E parametro <Todos>
Quando clicar em "Filrar"
Entao apresenta processo  

Exemplos:
| Todos      |
| Marcado    |
| Desmarcado |



@Cenario6
@Automatizar
@SincroniaMobile
Cenario: Cancelar filtro
E selecionar "Sincronia Mobile"
E clicar "Filtro"
Quando clicar em "Cancelar"
Entao fecha tela de filtros



@Cenario7
@Automatizar
@SincroniaMobile
Cenario: Limpar filtros
E selecionar "Sincronia Mobile"
E clicar "Filtro"
E preencher os campos
Quando clicar em "Limpar"
Entao Limpa os dados dos campos.



@Cenario8
@Automatizar
@SincroniaMobile
Esquema do Cenario: Ignorar todos  conflitos
E selecionar "Sincronia Mobile"
E <Processo> esteja com <Status>
Quando clicar "Ignorar Todos"
Entao grava <Processo2>
E grava <Status2>
E apresenta <MensagemIgnora>

Exemplos:
| Processo | Status          | Processo2 | Status2 | MensagemIgnora                |
| 324      | Ocorreu um erro | 324       | Enviado | Processo Ignorado com sucesso |



@Cenario9
@Automatizar
@SincroniaMobile
Esquema do Cenario: Tentar enviar novamente 
E selecionar "Sincronia Mobile"
E <Processo> esteja com <Status>
Quando clicar "Tentar Novamente"
Entao grava <Processo2>
E grava <Status2>
E apresenta <MensagemTentativa>

Exemplos:
| Processo                 | Status          | Processo2                | Status2         | MensagemTentativa                                                                                                                                         |
| Rota 375 - Rota Filtro 8 | Ocorreu um erro | Rota 375 - Rota Filtro 8 | Ocorreu um erro | "O ponto da rota deve estar em execução para ser estornado! Por favor utilize o processo \"Sincronizar Rota\" para atualizar os dados e tente novamente!" |
| Checklist 322            | Envio pendente  | Checklist 322            | Enviado         | Processo concluído com sucesso !                                                                                                                          |



@Cenario10
@Automatizar
@SincroniaMobile
Esquema do Cenario:  Abrir detalhes do processo  
E selecionar "Sincronia Mobile"
E selecionar <Processo>
Quando clicar na "Seta"
Entao exibe detalhes do processo 

Exemplos: 
| Processo      |
| Checklist 159 |



@Cenario11
@Automatizar
@SincroniaMobile
Esquema do Cenario:  Abrir detalhes do conflito no processo  
E selecionar "Sincronia Mobile"
E selecionar <Processo>
E clicar na "Seta"
Quando clicar no "i"
Entao exibe detalhes do conflito 

Exemplos: 
| Processo      |
| Checklist 159 |



@Cenario12
@Automatizar
@SincroniaMobile
Esquema do Cenario:  Ignorar conflito nos detalhes do processo   
E selecionar "Sincronia Mobile"
E selecionar <Processo>
E clicar na "Seta" 
E <Conflito> esteja con <Status>
Quando clicar na "Seta"
E clicar "Ignorar"
Entao grava conflito <Status2>
E apresenta <MensagemIgnora>
E grava <ProcessoStatus>

Exemplos: 
| Processo      | Conflito            | Status          | Status2  | MensagemIgnora                  | 
| Checklist 159 | 31/03/2023 10:19:14 | Ocorreu um erro | Ignorado | Processo ignorado com sucesso ! | 
| Checklist 159 | 31/03/2023 10:19:22 | Envio pendente  | Ignorado | Processo ignorado com sucesso ! |



@Cenario13
@Automatizar
@SincroniaMobile
Esquema do Cenario:  Grava como enviado após ignorar conflitos nos detalhes do processo    
E selecionar "Sincronia Mobile"
E selecionar <Processo>
E clicar na "Seta" 
E <Conflito> esteja con <Status>
Quando clicar na "Seta"
E clicar "Ignorar"
Entao grava conflito <Status2>
E grava <ProcessoStatus>
E apresenta <MensagemIgnora>

Exemplos: 
| Processo     | Conflito            | Status          | Status2  | MensagemIgnora                  | ProcessoStatus |
| Checklist 93 | 19/06/2023 13:14:49 | Ocorreu um erro | Ignorado | Processo ignorado com sucesso ! | Enviado        |



@Cenario14
@Automatizar
@SincroniaMobile
Esquema do Cenario: Filtrar conflitos    
E selecionar "Sincronia Mobile"
E selecionar <Processo>
E clicar na "Seta" 
E clicar em "Filtro"
E digitrar <PesquisaStatus>
E parâmetro <Todos> 
Quando clicar na "Lupa"
Entao exibe conflitos 

Exemplos: 
| Processo      | PesquisaStatus  | Todos      |
| Checklist 462 | Enviado         | Desmarcado |
| Checklist 462 | Ocorreu um erro | Desmarcado |
| Checklist 462 | Envio Pendente  | Desmarcado |
| Checklist 463 | Ignorado        | Desmarcado |
| Checklist 463 |                 | Marcado    |



@Cenario15
@Automatizar
@SincroniaMobile
Esquema do Cenario: Abrir detalhe dos conflitos     
E selecionar "Sincronia Mobile"
E selecionar <Processo>
E clicar na "Seta"  
Quando clicar  "i"
Entao exibe detalhes do conflitos  

Exemplos: 
| Processo      |
| Checklist 397 |



@Cenario16
@Automatizar
@SincroniaMobile
Esquema do Cenario: Tentar enviar conflito novamente atraves dos detalhes      
E selecionar "Sincronia Mobile"
E selecionar <Processo>
E clicar na "Seta"  
E <Conflito> esteja com <ConflitoStatus>
E clicar  "i"
Quando clicar "Tentar Novamente"
Entao grava <ConflitoStatus2>
E exibe <MensagemConflito> 

Exemplos: 
| Processo      | Conflito            | ConflitoStatus | ConflitoStatus2 | MensagemConflito                 |
| Checklist 397 | 21/06/2023 08:46:34 | Envio pendente | Enviado         | Processo concluído com sucesso ! |



@Cenario17
@Automatizar
@SincroniaMobile
Esquema do Cenario: Ignorar Processo atraves dos detalhes      
E selecionar "Sincronia Mobile"
E selecionar <Processo>
E clicar na "Seta"  
E <Conflito> esteja com <ConflitoStatus>
E clicar  "i"
Quando clicar "Ignorar Processo"
Entao grava <ConflitoStatus2>
E exibe <MensagemConflito> 

Exemplos: 
| Processo      | Conflito            | ConflitoStatus | ConflitoStatus2 | MensagemConflito                |
| Checklist 397 | 21/06/2023 08:48:01 | Envio pendente | Ignorado        | Processo ignorado com sucesso ! |



@Cenario18
@Automatizar
@SincroniaMobile
Esquema do Cenario: Cancelar detalhes do conflito      
E selecionar "Sincronia Mobile"
E selecionar <Processo>
E clicar na "Seta"   
E clicar  "i" no <Conflito>
Quando clicar "Cancelar"
Entao retornar para tela de anterior 

Exemplos: 
| Processo      | Conflito            | 
| Checklist 397 | 21/06/2023 08:48:01 | 



@Cenario19
@Automatizar
@SincroniaMobile
Esquema do Cenario: Alterar dados do conflito     
E selecionar "Sincronia Mobile"
E selecionar <Processo>
E clicar na "Seta"   
E <Conflito> esteja com <StatusConflito>
E clicar  "i" 
E clicar "Alterar Dados"
E preencher <Patrimonio>
Quando clicar "Alterar"
Entao grava <Patrimonio2>

Exemplos: 
| Processo                                | Conflito            | StatusConflito  | Patrimonio | Patrimonio2 |
| Checklist criado apenas no mobile - 109 | 15/03/2023 13:40:06 | Ocorreu um erro | 1603-91153 | BEB-3       |