#language: pt
#RotaDetalhes
#ServicesMobile


Funcionalidade: Exibir informações adicionais da atividade
  Como um usuário do Services Mobile 
  Eu quero visualizar informações adicionais da atividade 
  Para usar informações conforme as necessidades da atividade


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar
@ContatosEmail
Esquema do Cenario: Enviar email para o contato de uma atividade.
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "Contatos"
Quando clicar no <email>  
Entao deve ser direcionado para o email 
E conter campo destinatário preenchido com <email>

Exemplos:
| Empresa   | Rota  | Atividade          | Email                      |
| Matriz BH | 00360 | 1° Teste Atividade | samuel.silva@sisloc.com.br |



@Cenario2
@Automatizar
@ContatosTelefone
Esquema do Cenario: Direcionar para o discador com contato preenchido
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "Contatos"
Quando clicar no <Numero>  
Entao deve ser direcionado para o discador  
E conter campo numero preenchido com <Numero>

Exemplos:
| Empresa   | Rota  | Atividade    | Numero      |
| Matriz BH | 00358 | 1° Devolucao | 31988880909 |



@Cenario3
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



@Cenario4
@Automatizar
@Produtos
Esquema do Cenario: Visualizar produtos da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E tenha produtos vinculados na atividade
Quando clicar em "Produtos"
Entao deve exibir <Produto> da <Atividade>

Exemplos:
| Empresa   | Rota  | Atividade   | Produto                    |
| Matriz BH | 00358 | 1°devolução | 19803016 - Perfurador Solo |



@Cenario5
@Automatizar
@SemProdutos
Esquema do Cenario: Sem produtos da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E não tenha produtos vinculados na atividade
Quando clicar em "Produtos"
Entao deve exibir bloco em branco com mensagem "Nenhum resultado para os parâmetros pesquisados"

Exemplos:
| Empresa   | Rota  | Atividade        |
| Matriz BH | 00377 | 1°Nova Atividade |



@Cenario6
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



@Cenario7
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



@Cenario08
@Automatizar
@Acaminho
Esquema do Cenario: Iniciar atividade pendente deve disparar mensagem de Motorista a caminho configurada
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



@Cenario9
@Automatizar
@Chegou
Esquema do Cenario: Ao fazer chek in deve disparar mensagem de Motorista chegou configurada
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



@Cenario10
@Automatizar
@Concluida
Esquema do Cenario: Ao fazer chek out deve disparar mensagem de Atividade concluída configurada
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



@Cenario11
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
