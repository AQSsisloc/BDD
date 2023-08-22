#language: pt
#RotaFiltros
#ServicesMobile


Funcionalidade: Exibir rotas por datas específicas 
  Como um usuário do Services Mobile 
  Eu quero filtrar as rotas por datas específicas 
  Para ter melhor visibilidades das rotas  


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar
@FiltroLimpo
Esquema do Cenario: Executar filtro sem preecher dados
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida> 
Quando clicar "Filtrar"
Entao não deve exibir rotas 

Exemplos:
| Empresa   | Liberada   | EmExecucao | Concluida  |
| Matriz BH | Desativado | Desativado | Desativado |           



@Cenario2
@Automatizar 
@LimpaFiltros
Esquema do Cenario: Limpar filtro preenchido 
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida> 
E com data <InicioApos1>
E com data <FimAte1>
Quando clicar "Limpar Filtros"
Entao zera <InicioApos2>
E zera <FimAte2> 

Exemplos:
| Empresa   | Liberada   | EmExecucao | Concluida  | InicioApos1 | FimAte1    | InicioApos2 | FimAte2 |
| Matriz BH | Desativado | Desativado | Desativado | 21/07/2023  | 21/07/2023 | 21/07/2023  | 21/072023        |



@Cenario3
@Automatizar
@Liberada
Esquema do Cenario: Filtrar somente rotas liberadas para execução
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida> 
Quando clicar em "Filtrar"
Entao deve exibir somente rotas com status "Liberada para Execução" 

Exemplos:
| Empresa   | Liberada | EmExecucao | Concluida  | 
| Matriz BH | Ativado  | Desativado | Desativado |          



@Cenario4
@Automatizar
@LiberadaIncioApos
Esquema do Cenario: Filtrar rotas liberadas com data de início
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida> 
E com data <InicioApos> 
Quando clicar "Filtrar"
Entao exibe somente rotas liberadas com data após <InicioApos2>

Exemplos:
| Empresa   | Liberada | EmExecucao | Concluida  | InicioApos | InicioApos2 |
| Matriz BH | Ativado  | Desativado | Desativado | 30/06/2023 | 30/06/2023  |



@Cenario5
@Automatizar
@LiberadaFimAte
Esquema do Cenario: Filtrar rotas liberadas com data de finalização 
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida> 
E com data <FimAte> 
Quando clicar "Filtrar"
Entao exibe somente rotas liberadas com data de finalização ate <FimAte2>

Exemplos:
| Empresa   | Liberada | EmExecucao | Concluida  | FimAte     | FimAte2    |
| Matriz BH | Ativado  | Desativado | Desativado | 30/06/2023 | 30/06/2023 |



@Cenario6
@Automatizar
@EmExecucao 
Esquema do Cenario: Filtrar rotas em execucao  
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida> 
Quando clicar "Filtrar"
Entao deve exibir somente rotas com status "Em Execução"

Exemplos:
| Empresa   | Liberada   | EmExecucao | Concluida  | 
| Matriz BH | Desativado | Ativado    | Desativado |           
 


@Cenario7
@Automatizar
@ExecucaoInicioApos
Esquema do Cenario: Filtrar rotas em execucao com data de início
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida> 
E com data <InicioApos1> 
Quando clicar "Filtrar"
Entao exibe somente rotas liberadas com data após <InicioApos2>

Exemplos:
| Empresa   | Liberada   | EmExecucao | Concluida  | InicioApos1 | InicioApos2 |
| Matriz BH | Desativado | Ativado    | Desativado | 16/04/2023  | 16/04/2023  |



@Cenario8
@Automatizar
@LiberadaDataFim
Esquema do Cenario: Filtrar rotas em execucao com data de finalização 
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida> 
E com data <FimAte1> 
Quando clicar "Filtrar"
Entao exibe somente rotas liberadas com data de finalização ate <FimAte2>

Exemplos:
| Empresa   | Liberada | EmExecucao | Concluida  | FimAte     | FimAte2    | 
| Matriz BH | Ativado  | Desativado | Desativado | 30/06/2023 | 30/06/2023 |



@Cenario9
@Automatizar
@RotaConcluida 
Esquema do Cenario: Filtrar rotas concluídas 
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida> 
Quando clicar "Filtrar"
Entao deve exibir somente rotas com status "Concluída"

Exemplos:
| Empresa   | Liberada   | EmExecucao | Concluida |
| Matriz BH | Desativado | Desativado | Ativado   |
 


@Cenario10
@Automatizar
@ExecucaoInicioApos
Esquema do Cenario: Filtrar rotas concluídas com data de início
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Concluida>
E com data <InicioApos1> 
Quando clicar "Filtrar"
Entao exibe somente rotas concluidas com data após <InicioApos2>

Exemplos:
| Empresa   | Liberada   | EmExecucao | Concluida | InicioApos | InicioApos2 |
| Matriz BH | Desativado | Desativado | Ativado   | 09/07/2023 | 09/07/2023  |



@Cenario8
@Automatizar
@LiberadaDataFim
Esquema do Cenario: Filtrar rotas concluídas com data de finalização 
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Concluida>
E com data <FimAte1> 
Quando clicar "Filtrar"
Entao exibe somente rotas concluídas com data de finalização ate <FimAte2>

Exemplos:
| Empresa   | Liberada   | EmExecucao | Concluida | FimAte1    | FimAte2    |
| Matriz BH | Desativado | Desativado | Ativado   | 31/01/2022 | 31/01/2022 |



@Cenario9
@Automatizar
@RotaCompleto
Esquema do Cenario: Filtrar rotas com todos parâmetros marcados
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida>
Quando clicar em "Filtrar"
Entao deve exibir todas as rotas de todos os status

Exemplos:
| Empresa   | Liberada | EmExecucao | Concluida |
| Matriz BH | Ativado  | Ativado    | Ativado   | 



@Cenario10 
@Automatizar
@LiberadaExecucao
Esquema do Cenario: Filtrar rotas liberadas e em execucao 
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida>
E com data <InicioApos1> 
E com data <FimAte1>
Quando clicar "Filtrar"
Entao deve ser exibido rotas liberadas
E rotas em execucao 
E após data <InicioApos2> 
E ate data <FimAte2> 

Exemplos:
| Empresa   | Liberada | EmExecucao | Concluida  | InicioApos1 | FimAte1    | InicioApos2 | FimAte2    |
| Matriz BH | Ativado  | Ativado    | Desativado | 01/06/2023  | 31/07/2023 | 01/06/2023  | 31/07/2023 |



@Cenario11 
@Automatizar
@LiberadaConcluida
Esquema do Cenario: Filtrar rotas liberadas e concluídas  
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida>
Quando clicar "Filtrar"
Entao deve ser exibido rotas liberadas
E rotas concluídas  
 
Exemplos:
| Empresa   | Liberada | EmExecucao | Concluida | 
| Matriz BH | Ativado  | Desativado | Ativado   |   



@Cenario12
@Automatizar
@ExecucaoConcluida
Esquema do Cenario: Filtrar rotas em execução e concluídas
E esteja logado com usuário funcionário
E esteja logado com <empresa>
E clicar em "Rotas"
E clicar em "Filtro"
E com <Liberada>
E com <EmExecucao>
E com <Concluida>
E com data <InicioApos1>
E com data <FimAte1>
Quando clicar "Filtrar"
Entao deve ser exibido rotas em execucao 
E rotas concluídas
E rotas após a data <InicioApos2>
E rotas até a data <FimAte2> 
 
Exemplos:
| Empresa   | Liberada   | EmExecucao | Concluida | InicioApos1 | FimAte1    | InicioApos2 | FimAte2    |
| Matriz BH | Desativado | Ativado    | Ativado   | 01/06/2023  | 17/07/2023 | 01/06/2023  | 17/07/2023 |