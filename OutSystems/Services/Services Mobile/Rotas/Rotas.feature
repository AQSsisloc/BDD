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
Esquema do Cenario: Executar uma atividade pendente em uma rota liberada
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E possua <SituacaoAtividade>
Quando clicar na <Rota>
E clicar na <Atividade>
E clicar em "IrAgora"
Entao direciona para o Mapa
E grava o <StatusAtividade>

Exemplos:
| Empresa   | SituacaoAtividade | Rota  | Atividade          | StatusAtividade |
| Matriz BH | Pendente          | 00360 | 1º TESTE ATIVIDADE | Em Deslocamento |



@Cenario2
@Automatizar
@LiberadaContatosEmail
Esquema de Cenario: Enviar email para o contato de uma atividade liberada.
Dado que esteja logado com usuário com acesso ao módulo rotas
E rota esteja em execução
E atividade esteja com situação "Em deslocamento"
Quando clicar em "Contatos"
E clicar no ícone <email> 
Entao deve ser direcionado para aplicativo de email do telefone
E conter o campo destinatário preenchido com o contato do cliente

Exemplos:
| Empresa   | Rota | Contatos | Email                      |
| Matriz BH | 360  | AQS      | samuel.silva@sisloc.com.br |




