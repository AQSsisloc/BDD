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
Esquema do Cenario: Visualizar observação da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar em "Observação"
Entao deve exibir detalhes inseridos na criação da <Atividade>

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE |
