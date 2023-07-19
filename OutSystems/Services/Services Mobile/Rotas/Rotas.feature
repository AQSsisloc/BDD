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
@Liberada
Esquema do Cenario: Executar uma atividade pendente em uma rota liberada
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E possua <SituacaoRota>
E possua <SituacaoAtividade>
Quando clicar na <Rota>
E clicar na <Atividade>
E clicar em "IrAgora"
Entao direciona para o Mapa
E grava o <StatusAtividade>
E grava o <StatusRota>

Exemplos:
| Empresa   | SituacaoAtividade | Rota  | Atividade          | SituacaoRota           | StatusAtividade | StatusRota  | 
| Matriz BH | Pendente          | 00360 | 1º TESTE ATIVIDADE | Liberada para Execucao | Em Deslocamento | Em Execucao |   

@Cenario2 
@Automatizar
@EstornoAtividade
Esquema do Cenario: Estornar uma atividade com status "Em Deslocamento"
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E possua <SituacaoRota>
E possua <SituacaoAtividade>
Quando clicar em "Estornar"
Entao atualiza o <StatusAtividade>
E atualiza o <StatusRota>
E retorna com botão "Ir Agora"

Exemplos:
| Empresa   | SituacaoAtividade | Rota  | Atividade          | SituacaoRota | StatusAtividade | StatusRota             | 
| Matriz BH | Em deslocamento   | 00360 | 1º TESTE ATIVIDADE | Em Execucao  | Pendente        | Liberada para Execucao |   


@Cenario3
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
| Empresa   | Rota   | Atividade          | Email                      |
| Matriz BH | 00360  | 1° Teste Atividade | samuel.silva@sisloc.com.br |


@Cenario4
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
| Empresa   | Rota   | Atividade    | Numero         |
| Matriz BH | 00358  | 1° Devolucao | (31)98888-0909 |



@Cenario5
@Automatizar
@ExibirTrajeto
Esquema do Cenario: Exibir trajeto da rota 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
Quando clicar no "Mapa"
Entao exibe trajeto da rota 

Exemplos:
| Empresa   | Rota  | 
| Matriz BH | 00360 | 


@Cenario6
@Automatizar
@LocalizacaoAtividade
Esquema do Cenario: Exibir localizacao da atividade 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
Quando clicar na "localizacao" da <Atividade>
Entao exibe localizacao da <Atividade>

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00360 | 1° TESTE ATIVIDADE |

@Cenario7
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
| Empresa   | Rota   | Atividade          | 
| Matriz BH | 00361  | 1° TESTE ATIVIDADE |  

@Cenario8
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
| Empresa   | Rota   | Atividade          | 
| Matriz BH | 00361  | 1° TESTE ATIVIDADE |

