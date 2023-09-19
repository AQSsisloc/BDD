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
Esquema do Cenario:  
E selecionar "Sincronia Mobile"
E clicar "Filtro"
E preencher os campos
Quando clicar em "Limpar"
Entao Limpa os dados dos campos.



@Cenario9
@Automatizar
@SincroniaMobile
Esquema do Cenario:  
E selecionar "Sincronia Mobile"
E clicar "Filtro"
E preencher os campos
Quando clicar em "Limpar"
Entao Limpa os dados dos campos.



