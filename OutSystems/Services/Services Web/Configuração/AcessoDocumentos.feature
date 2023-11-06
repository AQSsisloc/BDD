#language: pt
#AcessoDocumentos
#ServicesWeb


Funcionalidade: Configura/Disponibiliza os documentos a serem visualizado/impresso no ambiente Web 
  Como um usuário do Services Web
  Eu quero configurar o documento que será apresentado ao usuário 
  Para gerar documento no processo de impressão/visualização 
 

Dado Esteja logado no Services Web 


@Cenario1
@Manual
@AcessoDocumentos
Cenario: Cadastrar documento 
E esteja logado com usuário perfil     
E clicar "configurações"
E clicar "Acessar a Documentos"
Quando clicar "+ Documento" 
E preencher os dados 
E clicar "Salvar"
Entao grava os dados 



@Cenario2
@Manual
@AcessoDocumentos
Cenario: Editar documento 
E esteja logado com usuário perfil     
E clicar "configurações"
E clicar "Acessar a Documentos"
Quando clicar "Visualizar" 
E preencher os dados 
E clicar "Salvar"
Entao grava os dados 



@Cenario3
@Manual
@AcessoDocumentos
Esquema do Cenario: Excluir documento 
E esteja logado com usuário perfil     
E clicar "configurações"
E clicar "Acessar a Documentos"
Quando clicar "Excluir" 
E clicar "Sim"
Entao exclui registro 
E apresenta <MensagemExclusao>

Exemplos:
| MensagemExclusao                          |
| Acesso a Documento excluído com sucesso ! |



@Cenari4
@Manual
@AcessoDocumentos
Cenario: Pesquisar documento  
E clicar "configurações"
E clicar "Acessar a Documentos"
Quando clicar "Pesquisar"
E preenhcer os dados 
E clicar "Lupa - Pesquisar"
Entao exibe dados  



@Cenario5
@Manual
@AcessoDocumentos
Cenario: Atualizar listagem 
E clicar "configurações"
E clicar "Acessar a Documentos"
Quando clicar "Atualizar"
Entao atualiza listagem 



@Cenario6
@Manual
@AcessoDocumentos
Esquema do Cenario: Auditoria documentos 
E clicar "configurações"
E clicar "Acessar a Documentos"
Quando clicar "Auditoria"
E clicar "Ação"
Entao exibe <Alerta> 

Exemplos: 
|Alerta|
|{"Id":115,"Descricao":"Confirmação CunzoloCampinas Comercial Locação","URL":"0206ee8f-2cdd-4a42-a0c1-11c0496ebff9","isControleInterno":true,"InsertedAt":"2019-06-18T13:14:51Z","InsertedUserId":1144,"UpdatedAt":"2019-06-18T13:14:51Z","UpdatedUserId":1144,"foAcessoDocumentoId":83}|
