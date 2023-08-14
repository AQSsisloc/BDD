#language: pt
#Remessa
#ServicesMobile


Funcionalidade: Gerenciar Remessas de equipamentos para locação
  Como um usuário do Services Mobile 
  Eu quero gerenciar Remessas dos equipamentos
  Para controlar a locação dos equipamentos 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar
@AbrirRemessa
Esquema do Cenario: Abrir remessa sem rota 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
Quando clicar na <Remessa>
Entao abre a <Remessa> 
E exibe os detalhes 
E exibe os equipamentos 

Exemplos: 
| Empresa | Remessa   |
| Matriz  | 004825-01 |


@Cenario2 
@Automatizar
@ListarRemessas
Esquema do Cenario: Listar remessas por cliente 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
Quando clicar em "Ir para listagem"
Entao apresenta listagem de remessas agupadas por cliente

Exemplos: 
| Empresa | 
| Matriz  |


@Cenario3
@Automatizar
@CheckInRemessa
Esquema do Cenario: Realizar check-In na entrega do equipamento 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Remessa> 
Quando clicar em "Check-In"
E clicar em "CONFIRMAR"
Entao grava os dados 
E apresenta <Mensagem> 

Exemplos: 
| Empresa | Remessa | Mensagem                       |
| Matriz  | 4860-03 | Check-In realizado com sucesso |



@Cenario4
@Automatizar
@CancelarCheckInRemessa
Esquema do Cenario: Cancelar check-In na entrega do equipamento 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Remessa> 
E clicar em "Check-In"
Quando clicar em "CANCELAR"
Entao cancela o check-in

Exemplos: 
| Empresa | Remessa | 
| Matriz  | 4860-03 | 



@Cenario5
@Automatizar 
@EstornoCheckInRemessa
Esquema do Cenario: Fazer estorno do check-in da remessa
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Remessa> 
E clicar em "Check-In"
E clicar em "CONFIRMAR"
Quando clicar em "Estornar Check-In"
E clicar em "Confirmar"
Entao grava os dados 
E exibe <Mensagem> 

Exemplos: 
| Empresa | Remessa | Mensagem                                  |
| Matriz  | 4860-03 | Estorno do check-In realizado com sucesso |



@Cenario6
@Automatizar
@CancelarEstornocheckin
Esquema do Cenario: Cancelar estonro do check-In 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Remessa> 
E clicar em "Check-In"
Quando clicar em "Estornar Check-In"
E clicar em "CANCELAR" 
Entao mantem os dados sem alteração  

Exemplos: 
| Empresa | Remessa | 
| Matriz  | 4860-03 | 



@Cenario7
@Automatizar
@CheckOutRemessa
Esquema do Cenario: Realizar check-out da entrega 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Remessa> 
E clicar em "Check-In"
E clicar em "CONFIRMAR"
Quando clicar em "Check-Out"
E clicar em "Check-out"
E preenche os dados
E clicar em "CONFIRMAR"
Entao grava os dados 
E apresenta <Mensagem> 

Exemplos: 
| Empresa | Remessa | Mensagem                        |
| Matriz  | 4860-03 | Check-Out realizado com sucesso |



@Cenario8
@Automatizar 
@EstornoCheckOutRemessa
Esquema do Cenario: Fazer estorno do check-out da remessa
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Remessa> 
E clicar em "Check-In"
E clicar em "CONFIRMAR"
E clicar em "Check-Out"
E clicar em "CONFIRMAR"
Quando clicar em "Estornar Check-Out"
E clicar em "Confirmar"
Entao grava os dados 
E exibe <Mensagem> 

Exemplos: 
| Empresa | Remessa | Mensagem                                   |
| Matriz  | 4860-03 | Estorno do check-Out realizado com sucesso |

                                                                     
                                                                 
@Cenario9
@Automatizar 
@CancelarEstornoCheckOutRemessa
Esquema do Cenario: Fazer estorno do check-out da remessa
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Remessa> 
E clicar em "Check-In"
E clicar em "CONFIRMAR"
E clicar em "Check-Out"
E clicar em "CONFIRMAR"
Quando clicar em "Estornar Check-Out"
E clicar em "Cancelar"
Entao não altera os dados 

Exemplos: 
| Empresa | Remessa | 
| Matriz  | 4860-03 | 



@Cenario10
@Automatizar 
@RemessaRota 
Esquema do Cenario: Executar remessa com rota 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar em <Remessa> 
E <Remessa> tenha rota
E clicar em "Ir Agora"
E clicar em "Check In"
Quando clicar em "Abrir Atividade"
Entao abre atividade da <Remessa> 

Exemplos: 
| Empresa | Remessa | 
| Matriz  | 4860-05 | 



@Cenario11
@Automatizar
@RemessaOffline
Esquema do Cenario: Executar remessa offline  
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E esteja no modo offline 
E clicar em <Remessa> 
E clicar em "Check-In"
E clicar em "CONFIRMAR"
Quando clicar em "Check-Out"
E clicar em "Check-out"
E preenche os dados
E clicar em "CONFIRMAR"
Entao grava os dados 
E apresenta <Mensagem> 

Exemplos: 
| Empresa | Remessa | Mensagem                        |
| Matriz  | 4860-04 | Check-Out realizado com sucesso |



@Cenario12
@Automatizar
@RemessaOfflineRota
Esquema do Cenario: Executar remessa offline com rota  
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E esteja no modo offline 
E tenha rota 
E <Remessa> tenha rota
E clicar em "Ir Agora"
E clicar em "Check In"
Quando clicar em "Abrir Atividade"
Entao abre atividade da remessa 
E apresenta dados da <Remessa>

Exemplos: 
| Empresa | Remessa | Mensagem                        |
| Matriz  | 4860-04 | Check-Out realizado com sucesso |

