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
Cenario: Configuração 
E selecionar "Configurações"
Quando selecionar "Integração Dropbox"
E inserir <APIKey>
E inserir <APPsecret>
E clicar "Salvar Credênciais"
Entao grava os dados 

Exemplos: 
| APIKey | APPsecret |
|        |           |
