#language: pt
#ServicesOcorrencia
#ServicesWeb


Funcionalidade: gerernciar ocorrências 
  Como um usuário do Services Web
  Eu quero visualizar os tipos de ocorrências 
  Para definir adequadamente para cada atividade
 

Dado Esteja logado no Services Web 


@Cenario1
@Manual
@ServiceOcorrencia
Esquema do Cenario: Cadastrar ocorrência  
E clicar em "Cadastros"
E clicar em "Ocorrência"
Quando clicar "+ Ocorrência"
E preenhcer os dados 
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemCriacao>

Exemplos:
| MensagemCriacao                         |
| Ocorrência 'teste 2' criado com sucesso |



@Cenario2
@Manual
@ServiceOcorrencia
Cenario: Atualizar listagem 
E clicar em "Cadastros"
E clicar em "Ocorrência"
Quando clicar "Atualizar"
Entao atualiza listagem 



@Cenario3
@Manual
@ServiceFuncionario
Cenario: Filtros  
E clicar em "Cadastros"
E clicar em "Ocorrência"
Quando filtros 
E preenhcer os dados 
E clicar "Filtrar"
Entao exibe dados do filtros



@Cenario4
@Automatizar
@ServiceFuncionario
Esquema do Cenario: Excluir funcionário 
E clicar em "Cadastros"
E clicar em "Ocorrência"
Quando clicar "Excluir"
E confirmar "Sim"
Entao exclui o dado   
E retorna <MensagemExclusao>

Exemplos:
| MensagemExclusao               |
| Registro excluído com sucesso! |



@Cenario5
@Manual
@ServiceFuncionario
Esquema do Cenario: Auditoria funcionário 
E clicar em "Cadastros"
E clicar em "Oocrrência" 
Quando clicar "Auditoria"
E clicar "Ação"
Entao exibe <Alerta> 

Exemplos: 
|Alerta|
|{"Id":276452,"ObjetoId":637175,"InsertedAt":"2019-07-17T12:15:24Z","InsertedUserId":1144,"UpdatedAt":"2019-07-17T12:15:24Z","UpdatedUserId":1144}|



@Cenario6
@Automatizar
@ServiceFuncionario
Esquema do Cenario: Editar ocorrência 
E clicar em "Cadastros"
E clicar em "Ocorrência"
Quando clicar "Ação"
E preenhcer os dados 
E clciar em "Salvar"
Entao grava os dados   
E retorna <MensagemEdicao>

Exemplos:
| MensagemExclusao                                      |
| Ocorrência 'Atraso na entrega' atualizada com sucesso |
