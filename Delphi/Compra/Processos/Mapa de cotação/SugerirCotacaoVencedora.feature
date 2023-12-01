#language: pt
#Sugerir cotação vencedora
#Delphi


Funcionalidade: Sugerir cotação vencedora
  Como sugerir a cotação vencedora, através do valor ou pelo fornecedor específico
  Eu quero sugerir o vencedor através do menor preço ou pelo fornecedor específico
  Para sugerir o vencedor através do menor preço ou pelo fornecedor específico


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@SugerirCotacaoVencedora
Cenario: Sugerir cotação vencedora.
E clicar em <SugerirCotacaoVencedora>
E marcar "Menor Preço"
E clicar "Ok"
Então gera mapa com a cotação de menor valor



@Cenario2
@Automatizar
@SugerirCotacaoVencedora
Cenario: Sugerir cotação vencedora.
E clicar em <SugerirCotacaoVencedora>
E marcar "Fornecedor"
E escolher fornecedor
E clicar "Ok"
Então gera mapa com a cotação do fornecedor escolhido