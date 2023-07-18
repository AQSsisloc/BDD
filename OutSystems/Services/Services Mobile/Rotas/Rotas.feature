#language: pt
#Rotas
#ServicesMobile


Funcionalidade: Gerenciar rotas de atividades criadas pelo Services
  Como um usuário do Services Mobile 
  Eu quero gerenciar e manter rotas
  Para utilizar nas atividades criadas pelo Services


Dado esteja logado no Services Mobile 

@Cenario1 
@Automatizar
@AtrasadasLiberadas
Esquema de Cenario: Executar uma atividade pendente em uma rota liberada na seção Atrasada.
Dado que esteja logado com usuário com acesso ao módulo rotas 
E a rota esteja liberada na seção Atrasadas 
E rota possua atividade pendente 
Quando clicar sobre a atividade
E clicar em "Ir Agora"
E selecionar "Localização Aproximada"
Entao situação da rota atualiza para "Em execução"
E situação da atividade atualiza para "Em deslocamento"
E apresenta botão de seleção "Estornar"
E apresenta botão de seleção "Check In"

Exemplos:
| Empresa   | Rota | Situação Rota | Situação Atividade |
| Matriz BH | 360  | Execução      | Em Deslocamento    |






