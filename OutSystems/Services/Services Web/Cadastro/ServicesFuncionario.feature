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
@ServicesFuncionario
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
@ServicesFuncionario
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
@ServicesFuncionario
Cenario: Não informar nome na criação 
E clicar em "Cadastros"
E clicar em "Funcionarios"
E clicar "+ Funcionário" 
Quando clicar "Sim"
Entao sinaliza obrigatoriedade do nome 



@Cenario4
@Manual
@ServicesFuncionario
Cenario: Pesquisar funcionario 
E clicar em "Cadastros"
E clicar em "Funcionarios"
Quando clicar "Pesquisar"
E preenhcer os dados 
E clicar "Lupa - Pesquisar"
Entao exibe dados  



@Cenario5
@Manual
@ServicesFuncionario
Cenario: Atualizar listagem 
E clicar em "Cadastros"
E clicar em "Funcionarios"
Quando clicar "Atualizar"
Entao atualiza listagem 



@Cenario6
@Manual
@ServicesFuncionario
Cenario: Filtros  
E clicar em "Cadastros"
E clicar em "Funcionarios" 
Quando filtros 
E preenhcer os dados 
E clicar "Filtrar"
Entao exibe dados do filtros



@Cenario7
@Manual
@ServicesFuncionario
Esquema do Cenario: Editar funcionário 
E clicar em "Cadastros"
E clicar em "Funcionarios"
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
@ServicesFuncionario
Esquema do Cenario: Excluir funcionário 
E clicar em "Cadastros"
E clicar em "Funcionarios"
Quando clicar "Excluir"
E confirmar "Sim"
Entao exclui o dado   
E retorna <MensagemExclusao>

Exemplos:
| MensagemExclusao               |
| Registro excluído com sucesso! |



@Cenario9
@Manual
@ServicesFuncionario
Esquema do Cenario: Auditoria funcionário 
E clicar em "Cadastros"
E clicar em "Funcionarios"
Quando clicar "Auditoria"
E clicar "Ação"
Entao exibe <Alerta> 

Exemplos: 
|Alerta|
|{"Id":276452,"ObjetoId":637175,"InsertedAt":"2019-07-17T12:15:24Z","InsertedUserId":1144,"UpdatedAt":"2019-07-17T12:15:24Z","UpdatedUserId":1144}|



@Cenario10
@Manual
@ServicesFuncionario
Esquema do Cenario: Sincronizar com Sisloc 
E clicar em "Cadastros"
E clicar em "Funcionarios"
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
@ServicesFuncionario
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
@ServicesFuncionario
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
@ServicesFuncionario
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
@ServicesFuncionario
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
@ServicesFuncionario
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
@ServicesFuncionario
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
@ServicesFuncionario
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
