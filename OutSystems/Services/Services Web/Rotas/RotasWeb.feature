#language: pt
#RotasWeb
#ServicesWeb


Funcionalidade: Gerenciar rotas das atividades
  Como um usuário do Services Web 
  Eu quero gerenciar rotas para as atividades 
  Para ter controle do fluxo de entrega 


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@RotasWeb
Esquema do Cenario: Exibir detalhes  
E selecionar "Rotas"
E selecionar "Previstas"
Quando clicar em "Detalhes" de uma <Rota>
Entao exibe os dados 

Exemplos:
| Rota         |
| 363 - Rota 1 |



@Cenario2
@Automatizar
@RotasWeb
Esquema do Cenario: Liberar Rota
E selecionar "Rotas"
E selecionar "Previstas"
Quando clicar em "Liberar"  uma <Rota>
Entao grava <RotaLiberada> na aba "Liberadas"
E exibe <MensagemLiberacao> 

Exemplos:
| Rota          | RotaLiberada  | MensagemLiberacao                      |
| 363 - Rota  1 | 363 - Rota  1 | Rota 363 - Rota 1 Liberada com sucesso |



@Cenario3
@Automatizar
@RotasWeb
Esquema do Cenario: Excluir uma Rota
E selecionar "Rotas"
E selecionar "Previstas"
Quando clicar em "Excluir"  uma <Rota>
E confirmar "Sim"
Entao grava os dados 
E exibe <MensagemExclusao> 

Exemplos:
| Rota         | MensagemExclusao          |
| 363 - Rota 1 | Rota removida com sucesso |



@Cenario4
@Automatizar
@RotasWeb
Esquema do Cenario: Editar rota 
E selecionar "Rotas"
E selecionar "Previstas"
E clicar em "Detalhes" de uma <Rota>
Quando clicar  "Editar Detalhes"
E alterar os dados 
E clicar "Salvar"
Entao grava os dados 
E exibe <MensagemAlteracao> 

Exemplos:
| Rota               | MensagemExclusao               |
| 00383 - rota AQS 1 | Detalhes alterados com sucesso |



@Cenario5
@Automatizar
@RotasWeb
Esquema do Cenario: Visualizar produtos 
E selecionar "Rotas"
E selecionar "Previstas"
E clicar em "Detalhes" de uma <Rota>
Quando clicar  "Produtos"
Entao exibe produtos 

Exemplos:
| Rota               |
| 00383 - rota AQS 1 |



@Cenario6
@Automatizar
@RotasWeb
Esquema do Cenario: Retirar única atividade da rota 
E selecionar "Rotas"
E selecionar "Previstas"
E clicar em "Detalhes" de uma <Rota>
Quando clicar  "Retirar"
E confirmar "Sim"
Entao não altera os dados 
E apresenta <MensagemRetirar>

Exemplos:
| Rota               | MensagemRetirar                                                  |
| 00383 - rota AQS 1 | Atividade não pode ser removida pois é o único endereço da rota. |



@Cenario7
@Automatizar
@RotasWeb
Esquema do Cenario: Retirar atividade da rota 
E selecionar "Rotas"
E selecionar "Previstas"
E clicar em "Detalhes" de uma <Rota>
Quando clicar  "Retirar"
E confirmar "Sim"
Entao grava os dados 
E apresenta <MensagemRetirada>

Exemplos:
| Rota               | MensagemRetirada               |
| 00383 - rota AQS 1 | Atividade retirada com sucesso |



@Cenario8
@Automatizar
@RotasWeb
Esquema do Cenario: Recarregar rota  
E selecionar "Rotas"
E selecionar "Previstas"
E clicar em "Detalhes" de uma <Rota>
Quando clicar  "Recarregar"
Entao dados são recarregados 

Exemplos:
| Rota               | 
| 00383 - rota AQS 1 | 



@Cenario9
@Automatizar
@RotasWeb
Esquema do Cenario: Reordenar rotas 
E selecionar "Rotas"
E selecionar "Previstas"
E clicar em "Detalhes" de uma <Rota>
Quando clicar  "Reordenar Rotas"
Entao abre mapa para reordenar 

Exemplos:
| Rota               | 
| 00383 - rota AQS 1 | 



@Cenario10
@Automatizar
@RotasWeb
Cenario: Recarregar rotas 
E selecionar "Rotas"
Quando clicar  "Recarregar"
Entao rotas são recarregadas 



@Cenario11
@Automatizar
@RotasWeb
Cenario: Filtrar Rota 
E selecionar "Rotas"
Quando clicar "Filtro"
E inserir dados do filtro 
E clicar  "Filtrar"
Entao apresenta a rota do filtro pesquisado  



@Cenario12
@Automatizar
@RotasWeb
Esquema do Cenario: Liberar todas as rotas 
E selecionar "Rotas"
Quando clicar "Liberar todas as Rotas"
E confirmar "Liberar Rotas"
Entao rotas previstas são liberadas  
E apresenta <MensagemLiberacao>

Exemplos: 
| MensagemLiberacao           |
| Rotas liberadas com sucesso |



@Cenario12
@Automatizar
@RotasWeb
Esquema do Cenario: Estornar liberação  
E selecionar "Rotas"
E selecionar "Liberadas"
Quando clicar "Estornar Liberação" em <Rota>
Entao grava os dados 
E apresenta <MensagemEstono>

Exemplos: 
| Rota                      | MensagemEstorno                                                |
| 00383 - Rota correção AQS | Estorno da rota 00383 - Rota correção AQS efetuado com sucesso |



@Cenario13
@Automatizar
@RotasWeb
Esquema do Cenario: Estornar liberação  
E selecionar "Rotas"
E selecionar "Liberadas"
Quando clicar "Estornar Liberação" em <Rota>
Entao grava os dados 
E apresenta <MensagemEstono>

Exemplos: 
| Rota                      | MensagemEstorno                                       |
| 00383 - Rota correção AQS | Rotas 00383 - Rota correção AQS estornada com sucesso |



@Cenario14
@Automatizar
@RotasWeb
Esquema do Cenario: Exibir notificação   
E selecionar "Rotas"
E selecionar "Em execução"
E clicar "Detalhes" em <Rota>
Quando clicar "Notificação"
Entao exibe notifiações enviadas

Exemplos: 
| Rota                      |
| 00383 - Rota correção AQS |



@Cenario15
@Automatizar
@RotasWeb
Esquema do Cenario: Concluir Rota 
E selecionar "Rotas"
E selecionar "Em execução"
E clicar "Detalhes" em <Rota>
Quando clicar "Concluir Rota"
Entao grava os dados 
E apresenta <MensagemConclusao>

Exemplos: 
| Rota                      | MensagemConclusao          |
| 00383 - Rota correção AQS | Rota concluída com sucesso |



@Cenario16
@Automatizar
@RotasWeb
Cenario: Estornar conclusão 
E selecionar "Rotas"
E selecionar "Em execução"
E clicar "Detalhes" em <Rota>
Quando clicar "Estornar Conclusão"
Entao grava os dados 
E apresenta <MensagemEstorno>

Exemplos: 
| Rota                      | MensagemConclusao                                              |
| 00383 - Rota correção AQS | Estorno da rota 00383 - Rota correção AQS efetuado com sucesso |

