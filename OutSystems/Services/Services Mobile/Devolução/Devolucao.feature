#language: pt
#Devolucao
#ServicesMobile


Funcionalidade: Gerenciar devolução de equipamentos locados
  Como um usuário do Services Mobile 
  Eu quero gerenciar a devolução dos equipamentos de locação 
  Para controlar a locação dos equipamentos 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar
@AbrirDevolucao
Esquema do Cenario: Abrir devolucao 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
Quando clicar na <Devolucao>
Entao abre a <Devolucao> 
E exibe os detalhes 
E exibe os equipamentos 

Exemplos: 
| Empresa | Devolucao |
| Matriz  | 004860-02 |



@Cenario2 
@Automatizar
@ListarDevolucoes
Esquema do Cenario: Listar devolucoes por cliente 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
Quando clicar em "Ir para listagem"
Entao apresenta listagem das devolucoes agupadas por cliente

Exemplos: 
| Empresa | 
| Matriz  |



@Cenario3
@Automatizar
@CheckInDevolucao
Esquema do Cenario: Realizar check-In na devolucao do equipamento 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Devolucao> 
Quando clicar em "Check-In"
E clicar em "CONFIRMAR"
Entao grava os dados 
E apresenta <Mensagem> 

Exemplos: 
| Empresa | Devolucao | Mensagem                       |
| Matriz  | 4860-02   | Check-In realizado com sucesso |



@Cenario4
@Automatizar
@CancelarCheckInDevolucao
Esquema do Cenario: Cancelar check-In na devolucao do equipamento 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Devolucao> 
E clicar em "Check-In"
Quando clicar em "CANCELAR"
Entao cancela o check-in

Exemplos: 
| Empresa | Devolucao |
| Matriz  | 4860-02   |



@Cenario5
@Automatizar 
@EstornoCheckInDevolucao
Esquema do Cenario: Fazer estorno do check-in da devolucao
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Devolucao> 
E clicar em "Check-In"
E clicar em "CONFIRMAR"
Quando clicar em "Estornar Check-In"
E clicar em "Confirmar"
Entao grava os dados 
E exibe <Mensagem> 

Exemplos: 
| Empresa | Devolucao | Mensagem                                  |
| Matriz  | 4860-02   | Estorno do check-In realizado com sucesso |



@Cenario6
@Automatizar
@CancelarEstornocheckinDevolucao
Esquema do Cenario: Cancelar estonro do check-In na devolucao
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Devolucao> 
E clicar em "Check-In"
Quando clicar em "Estornar Check-In"
E clicar em "CANCELAR" 
Entao mantem os dados sem alteração  

Exemplos: 
| Empresa | Devolucao |
| Matriz  | 4860-02   | 



@Cenario7
@Automatizar
@CheckOutDevolucao
Esquema do Cenario: Realizar check-out da devolucao 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Devolucao> 
E clicar em "Check-In"
E clicar em "CONFIRMAR"
Quando clicar em "Check-Out"
E clicar em "Check-out"
E preenche os dados
E clicar em "CONFIRMAR"
Entao grava os dados 
E apresenta <Mensagem> 

Exemplos: 
| Empresa | Devolucao | Mensagem                        |
| Matriz  | 4860-02   | Check-Out realizado com sucesso |



@Cenario8
@Automatizar 
@EstornoCheckOutDevolucao
Esquema do Cenario: Fazer estorno do check-out da devolucao
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Devolucao> 
E clicar em "Check-In"
E clicar em "CONFIRMAR"
E clicar em "Check-Out"
E clicar em "CONFIRMAR"
Quando clicar em "Estornar Check-Out"
E clicar em "Confirmar"
Entao grava os dados 
E exibe <Mensagem> 

Exemplos: 
| Empresa | Devolucao | Mensagem                                   |
| Matriz  | 4860-02   | Estorno do check-Out realizado com sucesso |

                                                                     
                                                                 
@Cenario9
@Automatizar 
@CancelarEstornoCheckOutDevolucao
Esquema do Cenario: Fazer estorno do check-out da devolucao
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Devolucao> 
E clicar em "Check-In"
E clicar em "CONFIRMAR"
E clicar em "Check-Out"
E clicar em "CONFIRMAR"
Quando clicar em "Estornar Check-Out"
E clicar em "Cancelar"
Entao não altera os dados 

Exemplos: 
| Empresa | Devolucao |
| Matriz  | 4860-02   |



@Cenario10
@Automatizar 
@DevolucaoRota 
Esquema do Cenario: Executar devolucao com rota 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Devolucao> 
E <Devolucao> tenha rota
E clicar em "Ir Agora"
E clicar em "Check In"
Quando clicar em "Abrir Atividade"
Entao abre atividade da <Devolucao> 

Exemplos: 
| Empresa | Devolucao |
| Matriz  | 4860-01   | 



@Cenario11
@Automatizar
@DevolucaoOffline
Esquema do Cenario: Executar devolucao offline  
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E esteja no modo offline 
E clicar em <Devolucao> 
E clicar em "Check-In"
E clicar em "CONFIRMAR"
Quando clicar em "Check-Out"
E clicar em "Check-out"
E preenche os dados
E clicar em "CONFIRMAR"
Entao grava os dados 
E apresenta <Mensagem> 

Exemplos: 
| Empresa | Devolucao | Mensagem                        |
| Matriz  | 4860-02   | Check-Out realizado com sucesso |



@Cenario12
@Automatizar 
@EstornoCheckOutDevolucaoOffline
Esquema do Cenario: Fazer estorno do check-out da devolucao offline
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E esteja no modo offline
E clicar em <Devolucao> 
E clicar em "Check-In"
E clicar em "CONFIRMAR"
E clicar em "Check-Out"
E clicar em "CONFIRMAR"
Quando clicar em "Estornar Check-Out"
E clicar em "Confirmar"
Entao grava os dados 
E exibe <Mensagem> 

Exemplos: 
| Empresa | Devolucao | Mensagem                                   |
| Matriz  | 4860-02   | Estorno do check-Out realizado com sucesso |



@Cenario13
@Automatizar
@DevolucaoOfflineRota
Esquema do Cenario: Executar devolucao offline com rota  
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E esteja no modo offline 
E tenha rota 
E <Devolucao> tenha rota
E clicar em "Ir Agora"
E clicar em "Check In"
Quando clicar em "Abrir Atividade"
Entao abre atividade da remessa 
E apresenta dados da <Devolucao>

Exemplos: 
| Empresa | Devolucao | Mensagem                        |
| Matriz  | 4860-02   | Check-Out realizado com sucesso |

