#language: pt
#IntegracaoDropbox
#ServicesWeb


Funcionalidade: Configurar integração dropbox
  Como um usuário do Services Web
  Eu quero adicionar configurar ção do dropbox 
  Para compartilhar dados com a integração


Dado Esteja logado no Services Web 


@Cenario1
@Manual
@IntegracaoDropbox
Esquema do Cenario: Configuração Dropbox 
E selecionar "Configurações"
Quando selecionar "Integração Dropbox"
E inserir <APIKey>
E inserir <APPsecret>
E clicar "Salvar Credênciais"
Entao grava os dados 

Exemplos: 
| APIKey          | APPsecret       |
| m7chkdsvt6tl6ml | fn5le0r5lr3sjgq |



@Cenario2
@Manual
@IntegracaoDropbox
Esquema do Cenario: Autorização Dropbox 
E selecionar "Configurações"
E selecionar "Integração Dropbox"
E esteja com  <APIKey>
E esteja com  <APPsecret>
Quando inserir  <AcessCode>
E clicar "Finalizar Configuração"
Entao grava os dados 
E gera <TokenAcesso>

Exemplos: 
| APIKey          | APPsecret       | AcessCode                                   | TokenAcesso                                                                                                                                     |
| m7chkdsvt6tl6ml | fn5le0r5lr3sjgq | nrtpQkJeRbEAAAAAAAAADhFbvawACYkx8_bIhmuoUyI | sl.BqDrsX2JPSg6z9dA7BOFU2Ji647SO0Dl4xErefJvgC89M4XiFdMbCDq5hCV5aoKlh2GEAlvwWHD29VSY47N41VoUlbG4JoSelFQxkbf7QfuftaIo0bajmsTf1fe3H_ycRxsHFhsLjVAH |



@Cenario3
@Manual
@IntegracaoDropbox
Cenario: Refazer configuração Dropbox 
E selecionar "Configurações"
E selecionar "Integração Dropbox"
Quando clicar "Refazer Configurações"
E clicar "Sim"
Entao abre tela de configuração  

