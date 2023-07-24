#language: pt
#AbrirMapa
#ServicesMobile


Funcionalidade: Exibir observação colocada na criação da atividade
  Como um usuário do Services Mobile 
  Eu quero visualizar a observação sobre a atividade 
  Para realizar o precedimento conforme a observação


Dado esteja logado no Services Mobile

@Cenario1
@Automatizar
@Observação
Esquema do Cenario: Visualizar observação na atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E tenha observação vinculada na <Atividade>
Quando clicar em "Observação"
Entao deve exibir detalhes inseridos na criação da <Atividade>

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE |

@Cenario2
@Automatizar
@SemObservação
Esquema do Cenario: Sem observação na atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
Quando clicar na <Atividade>
E não ter observação na <Atividade> 
Entao não deve exibir bloco "Observação" na atividade 

Exemplos:
| Empresa   | Rota  | Atividade        |
| Matriz BH | 00379 | 1°Nova Atividade |
