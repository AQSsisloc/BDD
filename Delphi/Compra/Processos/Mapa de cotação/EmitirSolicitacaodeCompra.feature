#language: pt
#Emitir solicitação de cotação
#Delphi


Funcionalidade: Emitir Solicitação de Cotação.
  Como emitir solicitação de cotação para fornecedores
  Eu quero emitir solicitação de cotação para fornecedores que participou da cotação
  Para emitir solicitação de cotação para cada fornecedor que participou da cotação


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@EmitirSolicitacadeCotacao
Cenario: Emitir solicitação de cotação
E clicar em <EmitirSolicitacaodeCotacao>
E informar "Fornecedor"
Então exibe cotação do fornecedor do mapa de cotação