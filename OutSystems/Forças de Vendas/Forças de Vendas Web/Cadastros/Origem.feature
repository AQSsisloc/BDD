#language: pt
#Origem
#ForcaDeVendasWeb


Funcionalidade: Cadastrar uma origem de uma Prospecção, Conta, Oportunidade ou Proposta
  Como um usuário do Força de Vendas 
  Eu quero cadastrar uma origem
  Para utilizar nos processos de prospecção, conta, oportunidade ou proposta


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@Origem
Esquema do Cenario: Cadastrar uma origem
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Origem"
Quando clicar em "+Origem"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| MensagemDeSucesso                       |
| Origem "Teste AQS 1" criada com suceso! |



@Cenario2
@Automatizar
@Origem
Esquema do Cenario: Cadastrar uma origem duplicada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Origem"
Quando clicar em "+Origem"
E inserir <Nome>
E preencher os campos disponíveis
E clicar em "Salvar"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Nome        | MensagemDeRetorno |
| Teste AQS 1 | Nome duplicado.   |



@Cenario3
@Automatizar
@Origem
Cenario: Cancelar o cadastro de uma origem
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Origem"
Quando clicar em "+Origem"
E inserir <Nome>
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados



@Cenario4
@Automatizar
@Origem
Esquema do Cenario: Editar uma origem cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Origem"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Origem>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Pesquisa    | Origem      | MensagemDeSucesso                           |
| Teste AQS 1 | Teste AQS 1 | Origem "Teste AQS 1" atualizada com suceso! |



@Cenario5
@Automatizar
@Origem
Esquema do Cenario: Excluir uma origem cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Origem"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Captador>
E clicar em "Excluir"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa    | Origem      | MensagemDeRetorno              |
| Teste AQS 2 | Teste AQS 2 | Registro excluído com sucesso! |



@Cenario6
@Automatizar
@PesquisarOrigem
Cenario: Pesquisar uma origem cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Origem"
Quando clicar em "Pesquisar"
Entao apresenta todas as origens criadas



@Cenario7
@Automatizar
@LimparPesquisaOrigem
Cenario: Limpar os resultados de uma pesquisa da origem
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Origem"
Quando clicar em "Pesquisar"
Entao limpa os resultados do filtro da pesquisa 



@Cenario8
@Automatizar
@AuditoriaOrigem
Cenario: Visualizar auditoria da origem
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Origem"
Quando clicar em "Auditoria"
Entao apresenta a auditoria da origem


