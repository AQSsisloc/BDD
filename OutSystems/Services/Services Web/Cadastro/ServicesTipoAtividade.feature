#language: pt
#ServicesTipoDeAtividade
#ServicesWeb


Funcionalidade: cadastrar tipo de atividade 
  Como um usuário do Services Web
  Eu quero cadastrar um tipo de atividade 
  Para utilizar na criação de atividades 
 

Dado Esteja logado no Services Web 


@Cenario1
@Manual
@ServicesTipoDeAtividade
Esquema do Cenario: Cadastrar tipo de atividade 
E clicar em "Cadastros"
E clicar em "Tipo de Atividade"
Quando clicar "+ Tipo de Atividade"
E preencher <Nome>
E preencher <Descricao>
E parâmetro <CompartilhaForcaVendas> 
E parâmetro <ControlarTempoExecucao>
E parâmetro <DefinirEndereco>
E parâmetro <DefinirContato>
E parâmetro <EnviarEmailAutomaicamente>
E clicar em "Salvar"
Entao grava os dados 
E apresenta <MensagemCriacao>

Exemplos:
| Nome    | Descricao | CompartilhaForcaVendas | ControlarTempoExecucao | DefinirEndereco | DefinirContato | EnviarEmailAutomaicamente | MensagemCriacao                      |
| teste1  |           | Marcado                |                        | Marcado         |                |                           | Atividade teste 1 criada com sucesso |
| teste1  |           | Marcado                |                        | Marcado         |                |                           | Atividade teste criada com sucesso   |
| teste 2 |           |                        | Marcado                |                 | Marcado        |                           | Atividade teste criada com sucesso   |
| teste 3 | Marcado   | Marcado                | Marcado                | Marcado         | Marcado        | Marcado                   | Atividade teste criada com sucesso   |



@Cenario2
@Automatizar
@ServicesTipoDeAtividade
Cenario: Atualizar listagem 
E clicar em "Cadastros"
E clicar em "Tipo de Atividade"
Quando clicar "Atualizar"
Entao atualiza listagem 



@Cenario3
@Manual
@ServicesTipoDeAtividade
Cenario: Filtros  
E clicar em "Cadastros"
E clicar em "Tipo de Atividade"
Quando filtros 
E preenhcer os dados 
E clicar "Filtrar"
Entao exibe dados do filtros



@Cenario4
@Automatizar
@ServicesTipoDeAtividade
Esquema do Cenario: Excluir tipo de atividade
E clicar em "Cadastros"
E clicar em "Tipo de Atividade"
Quando clicar "Excluir"
E confirmar "Sim"
Entao exclui o dado   
E retorna <MensagemExclusao>

Exemplos:
| MensagemExclusao               |
| Registro excluído com sucesso! |



@Cenario5
@Manual
@ServicesTipoDeAtividade
Esquema do Cenario: Auditoria atividade 
E clicar em "Cadastros"
E clicar em "Tipo de Atividade"
Quando clicar "Auditoria"
E clicar "Ação"
Entao exibe <Alerta> 

Exemplos: 
|Alerta|
|{"Id":39,"Nome":"Efetuar Ligação","InsertedAt":"2019-04-17T18:07:15Z","InsertedUserId":1150,"UpdatedAt":"2019-04-17T18:07:15Z","UpdatedUserId":1150,"IconName":"fa-phone","SislocColor":11,"IsTemContato":true}|



@Cenario6
@Manual
@ServicesTipoDeAtividade
Esquema do Cenario: Editar tipo de atividade
E clicar em "Cadastros"
E clicar em "Tipo de Atividade"
Quando clicar "Ação"
E preenhcer os dados 
E clciar em "Salvar"
Entao grava os dados   
E retorna <MensagemEdicao>

Exemplos:
| MensagemExclusao                                      |
| Ocorrência 'Atraso na entrega' atualizada com sucesso |
