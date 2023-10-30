#language: pt
#ServicesTipoAssinatura
#ServicesWeb


Funcionalidade: Cadastro de tipo de assinatura que será utilizada na assinatura do checklist e ordem de manutenção.
  Como um usuário do Services Web
  Eu quero cadastrar assinaturas  
  Para facilitar preenchimento de assinatura
 

Dado Esteja logado no Services Web 


@Cenario1
@Manual
@ServicesTipoAssinatura
Esquema do Cenario: Cadastrar novo tipo de assinatura  
E clicar em "Cadastros"
E clicar em "Tipo de assinatura"
Quando clicar "+ Tipo de Assinatura"
E configurar <Ativo>
E preencher "Nome"
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemCriacao>

Exemplos:
| Ativo | MensagemCriacao                       |
| Sim   | Tipo de assinatura salva com sucesso! |
| Não   | Tipo de assinatura salva com sucesso! |


@Cenario2
@Manual
@ServicesPatrimonio
Esquema do Cenario: Pesquisar tipo de assinatura 
E clicar em "Cadastros"
E clicar em "Tipo de Assinatura"
E preencher <Pesquisa> 
Quando clicar "Lupa - Pesquisar"
Entao exibe os dados

Exemplos:
| Pesquisa  |
| Coletor |



@Cenario3
@Manual
@ServicesPatrimonio
Cenario: Atualizar listagem  
E clicar em "Cadastros"
E clicar em "Tipo de Assinatura" 
Quando clicar "Atualizar"
Entao atualiza listagem



@Cenario4
@Manual
@ServicesPatrimonio
Esquema do Cenario: Editar tipo de assinatura 
E clicar em "Cadastros"
E clicar em "Tipo de Assinatura"
Quando clicar <Assinatura> 
E preencher os dados
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemEdicao>

Exemplos:
| Assinatura | MensagemEdicao                    |
| Cliente    | Tipo assinatura salvo com sucesso |



@Cenario5
@Manual
@ServicesPatrimonio
Esquema do Cenario: Excluir tipo de assinatura 
E clicar em "Cadastros"
E clicar em "Tipo de Assinatura"
Quando clicar "Seta" 
E clicar "Excluir"
E confirmar "Sim"
Entao excluir tipo de assinatura  
E apresenta <MensagemExclusao>

Exemplos: 
| MensagemExclusao                        |
| Tipo de assinatura deletado com sucesso |