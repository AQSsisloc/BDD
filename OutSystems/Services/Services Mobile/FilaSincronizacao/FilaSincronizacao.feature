#language: pt
#FilaSincronizacao
#ServicesMobile


Funcionalidade: Verificar fila de sincronização dos processos pendentes 
  Como um usuário do Services Mobile 
  Eu quero verificar a fila de sincronização dos processos pendentes  
  Para ter controle da finalização de processos 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar 
@FilaSincronizacao 
Esquema do Cenario: visualizar processos não sincronizados 
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
Quando clicar em "Fila de Sincronização"
E marcar <Parametro>
Entao apresenta processos na fila para sincronização

Exemplos:
| Empresa | Parametro                            |
| Matriz  | Não exibe processos já sincronizados |



@Cenario2
@Automatizar 
@FilaSincronizacao
Esquema do Cenario: visualizar processos já sincronizados 
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
Quando clicar em "Fila de Sincronização"
E marcar <Parametro>
Entao apresenta processos na fila para sincronização

Exemplos:
| Empresa | Parametro                        |
| Matriz  | Exibe processos já sincronizados |



@Cenario3
@Automatizar 
@FilaSincronizacao 
Esquema do Cenario: visualizar problemas sincronia checklist
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
E esteja com problemas na sincronização de dados
E clicar em "CheckList"
E selecionar um módulo <Modulo>
E clicar para pesquisar 
Quando clicar em "Problemas Sincronia"
Entao apresenta detalhes do problema na sincronização 

Exemplos:
| Empresa | Modulo |
| Matriz  | Avulso |



@Cenario4
@Automatizar 
@FilaSincronizacao 
Esquema do Cenario: falha ao tentar sincronizar pendência com conflitos
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
E esteja com problemas na sincronização de dados
E clicar em "CheckList"
E selecionar um módulo <Modulo>
E clicar para pesquisar 
E clicar em "Problemas Sincronia"
Quando selecionar uma pendência <Pendendencia>
E clicar "Tentar novamente"
E clicar "Confirmar"
Entao garrega os dados
E apresenta mensagem <MensagemPendencia>

Exemplos:
| Empresa | Modulo | Pendencia | MensagemPendencia                                    |
| Matriz  | Avulso | 465       | Os seguintes checklists continuam com conflitos: 465 |



@Cenario5
@Automatizar 
@FilaSincronizacao 
Esquema do Cenario: ordem de manutenção com conflito de sincronia 
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
E esteja com almoxarifado <Almoxarifado>
E esteja com problemas na sincronização de dados
E clicar em "Ordem de Manutenção"
Quando clicar em "Problemas Sincronia"
Entao apresenta conflito da ordem de manutenção 

Exemplos:
| Empresa | Almoxarifado  |
| Matriz  | ESTOQUE VENDA |



@Cenario6
@Automatizar 
@FilaSincronizacao 
Esquema do Cenario: ajustar ordem de manutenção com conflito de sincronia 
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
E esteja com almoxarifado <Almoxarifado>
E esteja com problemas na sincronização de dados
E clicar em "Ordem de Manutenção"
E clicar em "Problemas Sincronia"
Quando clicar na "Seta" da OM <OM> 
Entao abre OM para ajustar conflito 

Exemplos:
| Empresa | Almoxarifado  | OM    |
| Matriz  | ESTOQUE VENDA | BEB-4 |



@Cenario7
@Automatizar 
@FilaSincronizacao 
Cenario: exibir processos pendentes offline
E esteja logado com usuário funcionário
E esteja em modo offline
E clicar em "Menu"
Quando clicar em "Processos Pendentes"
Entao apresenta processos pendentes 



@Cenario8
@Automatizar 
@FilaSincronizacao
Esquema do Cenario: transferir processo pendente offline 
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
E esteja em modo offline 
E clicar em "Menu"
E clicar em "Processos Pendentes"
E houver processo pendente <Processo> 
Quando clicar "Transferir Dados"
Entao exibe mensagem <MensagemPendente> 

Exemplos:
| Empresa | Processo           | MensagemPendente                                                       |
| Matriz  | Apontamento P.D: 5 | Você não possui acesso a internet para realizar os processos pendentes |



@Cenario9
@Automatizar 
@FilaSincronizacao 
Esquema do Cenario: ativar modo online com processo pendente 
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
E esteja em modo offline 
E clicar em "Menu"
E houver processo pendente <Processo>
Quando ativar modo online  
Entao exibe mensagem <MensagemOnline> 

Exemplos:
| Empresa | Processo           | MensagemOnline                                                                 |
| Matriz  | Apontamento P.D: 5 | É necessário realizar envio das informações coletadas offline para o servidor! |



@Cenario10
@Automatizar 
@FilaSincronizacao 
Esquema do Cenario: ativar modo online com processo pendente e exibir processo
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
E esteja em modo offline 
E clicar em "Menu"
E houver processo pendente <Processo>
E ativar modo online
Quando clicar "Fechar" na mensagem   
Entao abre tela de processos pendentes  

Exemplos:
| Empresa | Processo           | 
| Matriz  | Apontamento P.D: 5 | 



@Cenario11
@Automatizar 
@FilaSincronizacao 
Esquema do Cenario: ativar modo online com processo pendente e realizar envio
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
E esteja em modo offline 
E clicar em "Menu"
E houver processo pendente <Processo>
E ativar modo online
E clicar "Fechar" na mensagem   
Quando clicar "Transferir Dados"
Entao carrega os dados 
E apresenta mensagem <MensagemEnvio>  

Exemplos:
| Empresa | Processo           | MensagemEnvio                             |
| Matriz  | Apontamento P.D: 5 | Pendência enviada ao servidor com sucesso |


