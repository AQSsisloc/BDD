#language: pt
#RotaStatus
#ServicesMobile


Funcionalidade: Gerenciar rotas de atividades criadas pelo Services
  Como um usuário do Services Mobile 
  Eu quero gerenciar e manter rotas
  Para utilizar nas atividades criadas pelo Services


Dado esteja logado no Services Mobile 


@Cenario1 
@Automatizar
@RotaStatusLiberada
Esquema do Cenario: Executar uma atividade pendente em uma rota liberada
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E possua <StatusRota1>
E possua <SituacaoAtividade>
Quando clicar na <Rota>
E clicar na <Atividade>
E clicar em "IrAgora"
Entao direciona para o Mapa
E grava o <StatusAtividade>
E grava o <StatusRota2>
E exibe botão "Estornar"
E exibe botão "Check In"

Exemplos:
| Empresa   | SituacaoAtividade | Rota  | Atividade          | StatusRota1            | StatusAtividade | StatusRota2 |
| Matriz BH | Pendente          | 00360 | 1º TESTE ATIVIDADE | Liberada para Execucao | Em Deslocamento | Em Execucao |



@Cenario2 
@Automatizar
@RotaEstornoEmDeslocamento
Esquema do Cenario: Estornar uma atividade com status "Em Deslocamento"
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E possua <StatusRota1>
E possua <SituacaoAtividade>
Quando clicar em "Estornar"
Entao atualiza o <StatusAtividade>
E atualiza o <StatusRota2>
E retorna com botão "Ir Agora"

Exemplos:
| Empresa   | StatusRota1 |SituacaoAtividade | Rota  | Atividade          | SituacaoRota | StatusAtividade | StatusRota2            |
| Matriz BH | Em Execucao| Em deslocamento   | 00360 | 1º TESTE ATIVIDADE | Em Execucao  | Pendente        | Liberada para Execucao |



@Cenario3
@Automatizar
@RotaCheckin
Esquema do Cenario: Clicar em "Check In" para iniciar atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "IrAgora"
Quando clicar em "Check In"
Entao status da atividade grava "Em execução"
E habilita seção "Fotos"
E habilita seção "Arquivos"
E exibe botões  "Cancelar", "Estornar Check-In", "Adiar", "Check Out"

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE |
 


@Cenario4
@Automatizar
@RotaEstornarCheckin
Esquema do Cenario: Estornar Check In da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "Check In"
Quando clicar estornar "Check In" 
Entao status da atividade grava "Em Deslocamento"
E exibe botão "Estornar"
E exibe botão "Check In"

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00378 | 1° TESTE ATIVIDADE |



@Cenario5
@Automatizar
@RotaAdiar
Esquema do Cenario: Adiar uma atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "IrAgora"
E clicar em "Check In"
Quando clicar "Adiar"
E preenche a confirmação
E confirmar confirmação 
Entao status da atividade grava "Adiado"
E exibe botão "Estornar Adiamento"

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00378 | 1° TESTE ATIVIDADE |



@Cenario6
@Automatizar
@EstornarAdiamento
Esquema do Cenario: Estornar adiamento de uma atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "IrAgora"
E clicar em "Check In"
E clicar em "Adiar"
Quando clicar "Estornar Adiamento"
Entao status da atividade grava "Em execução"
E exibe botões  "Cancelar", "Estornar Check-In", "Adiar", "Check Out"

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00378 | 1° TESTE ATIVIDADE |



@Cenario7
@Automatizar
@CheckOut
Esquema do Cenario: Realizar check out de uma atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "IrAgora"
E clicar em "Check In"
Quando clicar em "Check Out"
E preenche a confirmação 
E confirmar check out
Entao status da atividade grava "Concluído"
E exibe botão "Estornar Check-Out"

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00379 | 1°Nova Atividade   |



@Cenario8
@Automatizar
@EstornarCheckOut
Esquema do Cenario: Realizar estorno de check out de uma atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "IrAgora"
E clicar em "Check In"
E clicar em "Check Out"
Quando clicar "Estornar Check-Out" 
Entao status da atividade grava "Em execução"
E exibe botões  "Cancelar", "Estornar Check-In", "Adiar", "Check Out"

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00378 | 1° TESTE ATIVIDADE |



@Cenario9
@Automatizar
@EstornarCompleto
Esquema do Cenario: Realizar estorno de todo processo da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "IrAgora"
E clicar em "Check In"
E clicar "Check Out"
E clicar "Estornar Check-Out"
E clicar "Estornar Check-In"
E clicar "Estornar" 
Entao grava <StatusAtividade> 
E grava <StatusRota> 
E exibe botão "Ir Agora"

Exemplos:
| Empresa   | Rota  | Atividade          | StatusAtividade        | StatusRota |
| Matriz BH | 00378 | 1° TESTE ATIVIDADE | Liberada para Execução | Pendente   |



@Cenario10
@Automatizar
@Cancelar
Esquema do Cenario: Realizar cancelamento de uma atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "IrAgora"
E clicar em "Check In"
Quando clicar "Cancelar" 
E preencher responsável
E confirmar cancelamento 
Entao grava <StatusAtividade> 
E grava <StatusRota> 
E exibe botão "Estornar Cancelamento"

Exemplos:
| Empresa   | Rota  | Atividade          | StatusAtividade | StatusRota  |
| Matriz BH | 00378 | 1° TESTE ATIVIDADE | Cancelado       | Em Execução |



@Cenario11
@Automatizar
@EnderecoFinalCancelado
Esquema do Cenario: Ir para endereço final da rota 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E possua <StatusRota>
E possua <SituacaoAtividade>
Quando clicar "Ir Para Endereço Final"
Entao abre mapa com localização do endereço Final

Exemplos:
| Empresa   | Rota  | SituacaoAtividade | StatusRota  |
| Matriz BH | 00379 | Cancelado         | Em Execução |



@Cenario12
@Automatizar
@EnderecoFinalConcluido
Esquema do Cenario: Ir para endereço final da rota 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E possua <StatusRota>
E possua <SituacaoAtividade>
Quando clicar "Ir Para Endereço Final"
Entao abre mapa com localização do endereço Final

Exemplos:
| Empresa   | Rota  | SituacaoAtividade | StatusRota |
| Matriz BH | 00379 | Concluído         | Concluído  |



@Cenario13
@Automatizar
@ConcluirRota
Esquema do Cenario: Concluir rota 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E possua <StatusRota1>
E possua <SituacaoAtividade>
Quando clicar "Concluir Rota"
Entao então grava <StatusRota2>
E exibe botão "Estornar"

Exemplos:
| Empresa   | Rota  | SituacaoAtividade | StatusRota1 | StatusRota2 |
| Matriz BH | 00379 | Concluído         | Em Execucao | Concluído   |
