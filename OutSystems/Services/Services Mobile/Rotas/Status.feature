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
@StatusLiberada
Esquema do Cenario: Executar uma atividade pendente em uma rota liberada
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E possua <StatusRota>
E possua <SituacaoAtividade>
Quando clicar na <Rota>
E clicar na <Atividade>
E clicar em "IrAgora"
Entao direciona para o Mapa
E grava o <StatusAtividade>
E grava o <StatusRota>

Exemplos:
| Empresa   | SituacaoAtividade | Rota  | Atividade          | StatusRota             | StatusAtividade | StatusRota  |
| Matriz BH | Pendente          | 00360 | 1º TESTE ATIVIDADE | Liberada para Execucao | Em Deslocamento | Em Execucao | 

@Cenario2 
@Automatizar
@EstornoEmDeslocamento
Esquema do Cenario: Estornar uma atividade com status "Em Deslocamento"
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E possua <StatusRota>
E possua <SituacaoAtividade>
Quando clicar em "Estornar"
Entao atualiza o <StatusAtividade>
E atualiza o <StatusRota>
E retorna com botão "Ir Agora"

Exemplos:
| Empresa   | SituacaoAtividade | Rota  | Atividade          | SituacaoRota | StatusAtividade | StatusRota             |
| Matriz BH | Em deslocamento   | 00360 | 1º TESTE ATIVIDADE | Em Execucao  | Pendente        | Liberada para Execucao |


@Cenario10
@Automatizar
@Checkin
Esquema do Cenario: Clicar em "Check In" para iniciar atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar em "Check In"
Entao status da atividade grava "Em execução"
E habilita seção "Fotos"
E habilita seção "Arquivos"
E exibe botões  "Cancelar", "Estornar Check-In", "Adiar", "Check Out"

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE |
 

