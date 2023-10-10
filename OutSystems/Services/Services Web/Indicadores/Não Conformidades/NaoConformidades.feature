#language: pt
#NaoConformidades
#ServicesWeb


Funcionalidade: Visualizar checklists de não conformidades abertos em determinado período 
  Como um usuário do Services Web
  Eu quero visuaslizar não conformidades nos checklists 
  Para gerenciar os checklists de equipamentos com não conformidades


Dado Esteja logado no Services Web 


@Cenario1
@Automatizar
@NaoConformidades
Esquema do Cenario: Visualizar checklist equipamento aba hoje 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Não conformidades"
Quando clicar "Hoje"
Entao apresenta checklist 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario2
@Automatizar
@NaoConformidades
Esquema do Cenario: Visualizar checklist equipamento aba Semana Atual 
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Não conformidades"
Quando clicar "Semana Atual"
Entao apresenta checklist 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario3
@Automatizar
@NaoConformidades
Esquema do Cenario: Visualizar checklist equipamento aba Semana Anterior
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Não confomridades"
Quando clicar "Semana Anterior"
Entao apresenta checklist 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario4
@Automatizar
@NaoConformidades
Esquema do Cenario: Visualizar checklist equipamento aba Mês Atual
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Não conformidades"
Quando clicar "Mês Atual"
Entao apresenta checklist 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario5
@Automatizar
@NaoConformidades
Esquema do Cenario: Visualizar checklist equipamento aba Mês Anterior
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Não conformidades"
Quando clicar "Mês Anterior"
Entao apresenta checklist 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario6
@Automatizar
@NaoConformidades
Esquema do Cenario: Visualizar checklist equipamento aba Ano Atual
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Não conformidades"
Quando clicar "Ano Atual"
Entao apresenta checklist 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario7
@Automatizar
@NaoConformidades
Esquema do Cenario: Visualizar checklist equipamento aba Ano Anterior
E selecionar <Empresa>
E clicar em "Indicadores"
E clicar em "Não conformidades"
Quando clicar "Ano Anterior"
Entao apresenta checklist 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario8
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar atividade aba Período
E selecionar <Empresa>
E clicar em "Services"  
Quando clicar "Período"
E selecionar data <Data>
Entao apresenta checklist 

Exemplos:
| Empresa | Data       | 
| MATRIZ  | 09/10/2023 |



@Cenario09
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar gráfico em tela cheia
E selecionar <Empresa>
E clicar em "Indicadores"  
E clicar em "Não Conformidades"
Quando clicar "Exportar gráfico"
E clicar "Ver em Tela Cheia"
Entao apresenta checklist em tela cheia 

Exemplos:
| Empresa | 
| MATRIZ  | 



@Cenario10
@Automatizar
@PainelAtividades
Esquema do Cenario: Imprimir gráfico 
E selecionar <Empresa>
E clicar em "Indicadores"  
E clicar em "Não Conformidades"
E clicar em "Exportar gráfico"
Quando clicar "Imprimir gráfico"
Entao apresenta checklist para impressão

Exemplos:
| Empresa | 
| MATRIZ  | 



@Cenario11
@Automatizar
@PainelAtividades
Esquema do Cenario: Baixar grafico em PNG
E selecionar <Empresa>
E clicar em "Indicadores"  
E clicar em "Não Conformidades"
E clicar em "Exportar gráfico"
Quando clicar "Baixar imagem PNG"
Entao baixa imagem PNG

Exemplos:
| Empresa | 
| MATRIZ  | 



@Cenario12
@Automatizar
@PainelAtividades
Esquema do Cenario: Baixar grafico em JPEG
E selecionar <Empresa>
E clicar em "Indicadores"  
E clicar em "Não Conformidades"
E clicar em "Exportar gráfico"
Quando clicar "Baixar imagem JPEG"
Entao baixa imagem em JPEG

Exemplos:
| Empresa | 
| MATRIZ  | 



@Cenario12
@Automatizar
@PainelAtividades
Esquema do Cenario: Baixar PDF
E selecionar <Empresa>
E clicar em "Indicadores"  
E clicar em "Não Conformidades"
E clicar em "Exportar gráfico"
Quando clicar "Baixar arquivo PDF"
Entao baixa arquivo PDF

Exemplos:
| Empresa | 
| MATRIZ  | 



@Cenario13
@Automatizar
@PainelAtividades
Esquema do Cenario: Baixar vetor SVG
E selecionar <Empresa>
E clicar em "Indicadores"  
E clicar em "Não Conformidades"
E clicar em "Exportar gráfico"
Quando clicar "Baixar vetor SVG"
Entao baixa arquivo SVG

Exemplos:
| Empresa | 
| MATRIZ  | 



@Cenario14
@Automatizar
@PainelAtividades
Esquema do Cenario: Baixar CSV
E selecionar <Empresa>
E clicar em "Indicadores"  
E clicar em "Não Conformidades"
E clicar em "Exportar gráfico"
Quando clicar "Baixar CSV"
Entao baixa arquivo CSV

Exemplos:
| Empresa | 
| MATRIZ  | 



@Cenario14
@Automatizar
@PainelAtividades
Esquema do Cenario: Baixar XLS
E selecionar <Empresa>
E clicar em "Indicadores"  
E clicar em "Não Conformidades"
E clicar em "Exportar gráfico"
Quando clicar "Baixar XLS"
Entao baixa arquivo XLS

Exemplos:
| Empresa | 
| MATRIZ  |



@Cenario15
@Automatizar
@PainelAtividades
Esquema do Cenario: Ver dados da tabela 
E selecionar <Empresa>
E clicar em "Indicadores"  
E clicar em "Não Conformidades"
E clicar em "Exportar gráfico"
Quando clicar "Ver dados da tabela"
Entao abre detalhs da tabela

Exemplos:
| Empresa | 
| MATRIZ  |



@Cenario16
@Automatizar
@PainelAtividades
Esquema do Cenario: Ver detalhes do gráfico 
E selecionar <Empresa>
E clicar em "Indicadores"  
E clicar em "Não Conformidades"
Quando clicar em "checklist"
Entao abre detalhs do gráfico

Exemplos:
| Empresa | 
| MATRIZ  |



@Cenario17
@Automatizar
@PainelAtividades
Esquema do Cenario: Imprimir Checklist
E selecionar <Empresa>
E clicar em "Indicadores"  
E clicar em "Não Conformidades"
E clicar em "checklist"
Quando clicar em "Imprimir"
E selecionar <Modelo> 
E clicar "Ok"
Entao imprime checklist 

Exemplos:
| Empresa | Modelo    |
| MATRIZ  | Checklist |
