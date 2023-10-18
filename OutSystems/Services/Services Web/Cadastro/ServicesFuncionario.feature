#language: pt
#ServicesFuncionario
#ServicesWeb


Funcionalidade: gerenciar cadastro de funcionários 
  Como um usuário do Services Web
  Eu quero alterar os dados de funcionario 
  Para controlar o acesso dos funcionários ao Service


Dado Esteja logado no Services Web 


@Cenario1
@Automatizar
@ServiceFuncionario
Esquema do Cenario: Cadastrar um novo funcionário 
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário"
E preencher os dados 
Quando clicar "Criar"
E preencher os dados 
E clicar "Salvar"
E clicar "+Pessoa"
Entao grava os dados  
E retorna <MensagemCriacao>

Exemplos:
| MensagemCriacao                                  |
| Funcionário aqs funcionario 1 criado com sucesso |



@Cenario2
@Manual
@ServiceFuncionario
Cenario: Vincular pessoa como funcionário 
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário" 
E preencher <Nome> 
E clicar "Buscar"
E clicar "Raio - Vincular a esta pessoa..."
Quando confimar "Sim"
E preenhcer os dados 
E clicar "Salvar"
Entao grava os dados  
E retorna <MensagemCriacao>

Exemplos:
| Nome     | MensagemCriacao                                  |
| Acquagel | Funcionário aqs funcionario 1 criado com sucesso |



@Cenario3
@Manual
@ServiceFuncionario
Cenario: Não informar nome na criação 
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário" 
Quando clicar "Sim"
Entao sinaliza obrigatoriedade do nome 



@Cenario4
@Manual
@ServiceFuncionario
Cenario: Pesquisar funcionario 
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário" 
Quando clicar "Pesquisar"
E preenhcer os dados 
E clicar "Lupa - Pesquisar"
Entao exibe dados  



@Cenario5
@Manual
@ServiceFuncionario
Cenario: Atualizar listagem 
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário" 
Quando clicar "Atualizar"
Entao atualiza listagem 



@Cenario6
@Manual
@ServiceFuncionario
Cenario: Filtros  
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário" 
Quando filtros 
E preenhcer os dados 
E clicar "Filtrar"
Entao exibe dados do filtros



@Cenario7
@Manual
@ServiceFuncionario
Esquema do Cenario: Editar funcionário 
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário" 
Quando clicar "Alterar"
E preenhcer os dados 
E clicar "Salvar"
Entao grava os dados  
E retorna <MensagemCriacao>

Exemplos:
| MensagemCriacao                                  |
| Funcionário aqs funcionario 1 criado com sucesso |



@Cenario8
@Automatizar
@ServiceFuncionario
Esquema do Cenario: Excluir funcionário 
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário" 
Quando clicar "Excluir"
E confirmar "Sim"
Entao exclui o dado   
E retorna <MensagemExclusao>

Exemplos:
| MensagemExclusao               |
| Registro excluído com sucesso! |



@Cenario9
@Manual
@ServiceFuncionario
Esquema do Cenario: Auditoria funcionário 
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário" 
Quando clicar "Auditoria"
E clicar "Ação"
Entao exibe <Alerta> 

Exemplos: 
|Alerta|
|{"Id":276452,"ObjetoId":637175,"InsertedAt":"2019-07-17T12:15:24Z","InsertedUserId":1144,"UpdatedAt":"2019-07-17T12:15:24Z","UpdatedUserId":1144}|



@Cenario10
@Manual
@ServiceFuncionario
Esquema do Cenario: Sincronizar com Sisloc 
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário" 
Quando clicar "Atualizar/Sincronizar com Sisloc"
E preencher "ID"
E confirmar "OK"
Entao sincroniza com Sisloc 
E retorna <MensagemSincronizacao>

Exemplos:
| MensagemSincronizacao                                                                                                           |
| Pessoa de código 5517 foi atualizada/sincronizada com sucesso! Ultima atualização desse registro no sisloc: 17/10/2023 17:31:04 |



@Cenario11
@Manual
@ServiceFuncionario
Esquema do Cenario: Inserir endereço  
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "Alterar" 
Quando clicar "Endereço"
E  clicar "+ Endereço"
E preencher os dados 
E clicar "Salvar"
Entao grava os dados 
E retorna <MensagemEndereco>

Exemplos:
| MensagemEndereco             |
| Endereço criado com sucesso! |



@Cenario12
@Manual
@ServiceFuncionario
Cenario: Criar contato na inserção do endereço  
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "Alterar" 
E clicar "Endereço"
E clicar "+ Endereço"
E clicar "Contato"  
Quando clicar "+ Novo Contato"
E preencher os dados 
E clicar "Salvar"
Entao grava os dados 



@Cenario13
@Manual
@ServiceFuncionario
Esquema do Cenario: Visualizar endereço no mapa   
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "Alterar" 
E clicar "Endereço" 
Quando clicar "Mapa"
Entao abre mapa com localização <Endereco>

Exemplos:
| Endereco                                                      |
| Belo Horizonte - MG Praça da Liberdade, 800 - Praça - Savassi |



@Cenario14
@Manual
@ServiceFuncionario
Cenario: Excluir endereço    
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "Alterar" 
E clicar "Endereço" 
Quando clicar "Excluir"
E confirmar "Sim"
Entao exclui endereço



@Cenario15
@Manual
@ServiceFuncionario
Cenario: Inserir imagem   
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "Alterar" 
E clicar "Assinatura Email" 
Quando clicar "Carregar imagem"
E selecionar imagem 
Entao inclui imagem 



@Cenario16
@Manual
@ServiceFuncionario
Cenario: Excluir imagem   
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "Alterar" 
E clicar "Assinatura Email" 
Quando clicar "Remover imagem"
E confirmar "Sim"
Entao exclui imagem



@Cenario17
@Manual
@ServiceFuncionario
Cenario: Carregar cadastro duplicado  
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário" 
E preenhcer "Nome"
E clicar "Criar" 
E preenhcer os dados 
Quando clicar "Salvar"
E selecionar cadastro existente 
Entao carrega cadastro
