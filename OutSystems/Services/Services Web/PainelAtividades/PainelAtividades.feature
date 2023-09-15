#language: pt
#PainelAtividades
#ServicesWeb


Funcionalidade: Exibir atividades e suas situações 
  Como um usuário do Services WEB 
  Eu quero visualizr as atividades 
  Para gerenciar o fluxo de trabalho 


Dado esteja logado no Services Web


@Cenario1
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar atividade aba hoje 
E selecionar <Empresa>
E clicar em "Services"    
Quando clicar "Hoje"
Entao apresenta atividades <Atrasadas> do dia de hoje 
E apresenta atividades <Abertas> do dia de hoje
E apresenta atividades <Concluidas> do dia de hoje

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario2
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar atividade aba semana atual 
E selecionar <Empresa>
E clicar em "Services"   
Quando clicar "Semana Atual"
Entao apresenta atividades <Atrasadas> da semana anterior 
E apresenta atividades <Abertas> da semana anterior 
E apresenta atividades <Concluidas> da semana anterior 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario3
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar atividade aba Semana Atual
E selecionar <Empresa>
E clicar em "Services"   
Quando clicar "Semana Atual"
Entao apresenta atividades <Atrasadas> da semana atual
E apresenta atividades <Abertas> da semana atual
E apresenta atividades <Concluidas> da semana atual 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario4
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar atividade aba Semana Anterior
E selecionar <Empresa>
E clicar em "Services"   
Quando clicar "Semana Anterior"
Entao apresenta atividades <Atrasadas> da semana anterior 
E apresenta atividades <Abertas> da semana anteior 
E apresenta atividades <Concluidas> da semana anteior

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario5
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar atividade aba Mês Atual
E selecionar <Empresa>
E clicar em "Services"   
Quando clicar "Mês Atual"
Entao apresenta atividades <Atrasadas> mês atual 
E apresenta atividades <Abertas> mês atual 
E apresenta atividades <Concluidas> mês atual 

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario6
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar atividade aba Mês Anterior
E selecionar <Empresa>
E clicar em "Services"  
Quando clicar "Mês Anterior"
Entao apresenta atividades <Atrasadas> mês anterior 
E apresenta atividades <Abertas> mês anterior
E apresenta atividades <Concluidas> mês anterior 

Exemplos:
| Empresa |  
| MATRIZ  | 


@Cenario7
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar atividade aba Ano Atual
E selecionar <Empresa>
E clicar em "Services"  
Quando clicar "Ano Atual"
Entao apresenta atividades <Atrasadas> Ano Atual 
E apresenta atividades <Abertas> Ano Atual
E apresenta atividades <Concluidas> Ano Atual

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario8
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar atividade aba Ano Anterior
E selecionar <Empresa>
E clicar em "Services"  
Quando clicar "Ano Anterior"
Entao apresenta atividades <Atrasadas> Ano Anterior 
E apresenta atividades <Abertas> Ano Anterior
E apresenta atividades <Concluidas> Ano Anterior

Exemplos:
| Empresa |  
| MATRIZ  | 



@Cenario9
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar atividade aba Período
E selecionar <Empresa>
E clicar em "Services"  
Quando clicar "Período"
E selecionar data <Data>
Entao apresenta atividades <Atrasadas> Ano Anterior 
E apresenta atividades <Abertas> Ano Anterior
E apresenta atividades <Concluidas> Ano Anterior

Exemplos:
| Empresa | Data       | Atrasadas                   | Abertas                     |
| MATRIZ  | 14/10/2023 | 3-estudo para plano rigging | 3-estudo para plano rigging |



@Cenario10
@Automatizar
@PainelAtividades
Esquema do Cenario: Visualizar atividade por filtro
E selecionar <Empresa>
E clicar em "Services"
E selecionar empresas no filtro <Filtro>
Quando clicar "Período"
E selecionar data <Data>
Entao apresenta atividades <Atrasadas> Ano Anterior 
E apresenta atividades <Abertas> Ano Anterior
E apresenta atividades <Concluidas> Ano Anterior

Exemplos:
| Empresa | Data       | Filtro     | Atrasadas                   | Abertas                     |
| MATRIZ  | 14/10/2023 | Matriz     | 3-estudo para plano rigging | 3-estudo para plano rigging |
| MATRIZ  | 14/10/2023 | BHLOCADORA | 3-estudo para plano rigging | 3-estudo para plano rigging |



@Cenario11
@Automatizar
@PainelAtividades
Esquema do Cenario: Filtrar toas as empresas 
E selecionar <Empresa>
E clicar em "Services"
Quando clicar "Todas" 
E clicar no "Filtro"
Entao apresenta atividades de todas as empresas

Exemplos:
| Empresa | 
| MATRIZ  | 



@Cenario12
@Automatizar
@PainelAtividades
Esquema do Cenario: Abrir atividade  
E selecionar <Empresa>
E clicar em "Services"
E selecionar uma aba 
Quando clicar em uma atividade  
Entao abre registros da <Atividade>

Exemplos:
| Empresa | Atividade                   |
| MATRIZ  | 3-estudo para plano rigging |



@Cenario13
@Automatizar
@PainelAtividades
Esquema do Cenario: Abrir registro dentro de uma atividade  
E selecionar <Empresa>
E clicar em "Services"
E selecionar uma aba 
Quando clicar em uma atividade  <Atividade>
E clicar "Seta" em um registro 
Entao abre registros <Registros> da atividade  
E exibe detalhes do registro 

Exemplos:
| Empresa | Atividade                   | Registros |
| MATRIZ  | 3-estudo para plano rigging | Oportunidade |



@Cenario14
@Automatizar
@PainelAtividades
Esquema do Cenario: Editar registro dentro de uma atividade  
E selecionar <Empresa>
E clicar em "Services"
E selecionar uma aba 
E clicar em uma atividade  <Atividade>
E <Atividade2> possua um registro  
E clicar "Seta" em um registro <Registro>
Quando clicar em "Ver/Editar Atividade" 
Entao abre tela de edição da <Atividade3>

Exemplos:
| Empresa | Atividade                   | Atividade2                  | Registro     | Atividade3                  |
| MATRIZ  | 3-estudo para plano rigging | 3-estudo para plano rigging | Oportunidade | 3-estudo para plano rigging |



@Cenario15
@Automatizar
@PainelAtividades
Esquema do Cenario: Ver contato em registro dentro de uma atividade  
E selecionar <Empresa>
E clicar em "Services"
E selecionar uma aba 
E clicar em uma atividade  <Atividade>
E <Atividade2> possua um registro  
E clicar "Seta" em um registro <Registro>
Quando clicar em "Ver Contatos" 
Entao abre tela de contatos 

Exemplos:
| Empresa | Atividade                   | Atividade2                  | Registro     | 
| MATRIZ  | 3-estudo para plano rigging | 3-estudo para plano rigging | Oportunidade | 
