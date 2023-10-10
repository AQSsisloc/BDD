#language: pt
#IndicadorRemessa 
#ServicesWeb


Funcionalidade: Visualizar remessas realizadas pelo Services 
  Como um usuário do Services Web
  Eu quero visuaslizar indicadores referente as remessas 
  Para analisar informações do processo de remessa


Dado Esteja logado no Services Web 


@Cenario1
@Automatizar
@IndicadorRemessa 
Esquema do Cenario: Visualizar indicador Remessa aba hoje 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Hoje"
Entao apresenta indicador

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario2
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Visualizar indicador Remessa aba Semana Atual 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Semana Atual"
Entao apresenta indicador 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario3
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Visualizar indicador Remessa aba Semana Anterior
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Semana Anterior"
Entao apresenta indicador 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario4
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Visualizar indicador Remessa aba Mês Atual
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Mês Atual"
Entao apresenta indicador

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario5
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Visualizar indicador Remessa aba Mês Anterior
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Mês Anterior"
Entao apresenta indicador

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario6
@Automatizar
@IndicadorRemessa 
Esquema do Cenario: Visualizar indicador Remessa aba Ano Atual
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Ano Atual"
Entao apresenta indicador

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario7
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Visualizar indicador Remessa aba Ano Anterior
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Ano Anterior"
Entao apresenta indicador

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario8
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Visualizar indicador Remessa aba Período
E selecionar <Empresa>
E clicar em "Services"  
E clicar em "Remessas e Devoluções"
Quando clicar "Período"
E selecionar data <Data>
Entao apresenta indicador 

Exemplos:
| Empresa | Data       | 
| MATRIZ  | 09/10/2023 |



@Cenario9
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Filtrar indicadores Remessa
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Filtro Avançado"
E preencher os dados
E clicar em "Filtrar"
Entao apresenta indicador 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario10
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Detalhes indicadores Remessa
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Detalhes"
Entao apresenta detalhes das remessas 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario11
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Exportar indicadores Remessa para excel 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
E clicar "Detalhes"
Quando clicar em "Exportar"
E clicar "Exportar Aquivos"
Entao arquivo é gerado 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario12
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Visualizar produto remessa
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
E clicar "Detalhes"
Quando clicar em "Equipamento"
Entao apresenta produto

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario13
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Remessas concluídas com ocorrências 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar em "Remessa(s) Com Ocorrência"
Entao destaca dados de ocorrência 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario14
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Remessas concluídas sem ocorrências
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar em "Remessa(s) Sem Ocorrência"
Entao destaca dados de ocorrência 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario15
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Remessas concluídas expandir grafico 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Expandir" em "Remessas Concluídas" 
Entao expande gráfico 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario16
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Motivo de Ocorrência de Remessas Concluídas
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar <Motivo> em "Remessas Concluídas" 
Entao destaca motivo no gráfico

Exemplos:
| Empresa | Motivo         |
| MATRIZ  | Sem Ocorrência |



@Cenario17
@Automatizar
@IndicadorRemessa
Esquema do Cenario: Expandir Motivo de Ocorrência de Remessas Concluídas
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Remessas e Devoluções"
Quando clicar "Expandir" em "Motivo de Ocorrência de Remessas Concluídas" 
Entao Expande gráfico

Exemplos:
| Empresa | 
| MATRIZ  | 
