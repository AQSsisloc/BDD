#language: pt
#ServicesTipoAssinatura
#ServicesWeb


Funcionalidade: Cadastro de tipo de assinatura que será utilizada na assinatura do checklist e ordem de manutenção.
  Como um usuário do Services Web
  Eu quero cadastrar assinaturas  
  Para facilicatar preenchimento de assinatura
 

Dado Esteja logado no Services Web 


@Cenario1
@Manual
@ServicesTipoAssinatura
Esquema do Cenario: Cadastrar novo tipo de assinatura  
E clicar em "Cadastros"
E clicar em "Tipo de assinatura"
Quando clicar "+ Tipo de Assinatura"
E preencher os dados 
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemCriacao>

Exemplos:
| MensagemCriacao                         |
| Região Teste bairros salva com sucesso! |
