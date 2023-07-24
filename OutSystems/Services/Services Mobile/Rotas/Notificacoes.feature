#language: pt
#Rotas
#ServicesMobile


Funcionalidade:Exibe tipos de notificações disparadas para cada etapa da atividade 
  Como um usuário do Services Mobile 
  Eu quero visualizar as notificações da atividade 
  Para estar ciente do andamento da atividade 

Dado esteja logado no Services Mobile 

@Cenario01
@Automatizar
@Acaminho
Esquema do Cenario: Iniciar atividade pendente deve disparar mensagem de Mostorista a caminho configurada
E esteja com Modelo mensagem WhatsApp motorista está a caminho configurada no Services Web
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar em "Ir Agora"
Entao deve ser disparado mensagem para cliente 
E bloco "Motorista a caminho" nas notificações deve gravar "Disparado"

Exemplos:
| Empresa   | Rota  | Atividade |
| Matriz BH | 00358 | Devolução |


@Cenario2
@Automatizar
@Chegou
Esquema do Cenario: Ao fazer chek in deve disparar mensagem de Mostorista chegou configurada
E esteja com Modelo mensagem WhatsApp motorista chegou configurada no Services WEB
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar em "Check In"
Entao deve ser disparado mensagem para cliente 
E bloco "Motorista chegou" nas notificações deve gravar "Disparado"

Exemplos:
| Empresa   | Rota  | Atividade |
| Matriz BH | 00358 | Devolução |



@Cenario3
@Automatizar
@Concluida
Esquema do Cenario: Ao fazer chek out deve disparar mensagem de Atividade concluida configurada
E esteja com Modelo mensagem WhatsApp atividade concluída configurada no Services WEB
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar em "Check Out"
Entao deve ser disparado mensagem para cliente 
E bloco "Atividade concluída" nas notificações deve gravar "Disparado"

Exemplos:
| Empresa   | Rota  | Atividade |
| Matriz BH | 00358 | Devolução |


@Cenario4
@Automatizar
@SemNotificacao
Esquema do Cenario: Quando não configurado mensagens WhatsApp não deve exibir seção "Notificações" 
E não esteja com "Notificar os clientes sobre a rota por WhatsApp" configurada no Services WEB
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
Quando clicar na <Atividade>
Entao não deve exibir seção "Notificações" na atividade 

Exemplos:
| Empresa   | Rota | Atividade          |
| Matriz BH | 00378 | 1°TESTE ATIVIDADE |
