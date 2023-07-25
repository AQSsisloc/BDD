#language: pt
#Rotas
#ServicesMobile


Funcionalidade: Exibir detalhes colocada na criação da atividade
  Como um usuário do Services Mobile 
  Eu quero visualizar os detalhes sobre a atividade 
  Para realizar o precedimento conforme os detalhes 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar
@Detalhes
Esquema do Cenario: Visualizar detalhes da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar em "Detalhes"
Entao deve exibir detalhes inseridos na criação da <Atividade>

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE |


