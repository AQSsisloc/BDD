#language: pt
#Captador
#ForcaDeVendasWeb


Funcionalidade: Cadastrar um captador para executar a prospecção
  Como um usuário do Força de Vendas 
  Eu quero cadastrar um captador
  Para utilizar nos processos de prospecção


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@Captador
Esquema do Cenario: Cadastrar um captador de um pessoa já cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando clicar em "+Captador"
E inserir <Nome>
E clicar em "Buscar"
E selecionar <Pessoa>
E clicar em "Raio"
E clicar em "Sim"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Nome      | Pessoa      | MensagemDeSucesso                         |
| Teste AQS | Teste AQS 1 | Captador "Teste AQS 1" criado com suceso! |



@Cenario2
@Automatizar
@Captador
Esquema do Cenario: Cadastrar um captador de um pessoa não cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando clicar em "+Captador"
E inserir <Nome>
E clicar em "Criar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Nome             | MensagemDeSucesso                              |
| Teste Captador 1 | Captador "Teste Captador 1" criado com suceso! |



@Cenario3
@Automatizar
@Captador
Esquema do Cenario: Cadastrar um captador e inserir um endereço
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando clicar em "+Captador"
E inserir <Nome>
E clicar em "Criar"
E preencher os campos disponíveis
E clicar em "+Endereço"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Nome             | MensagemDeSucesso            |
| Teste Captador 2 | Endereço criado com sucesso! |



@Cenario4
@Automatizar
@Captador
Esquema do Cenario: Editar um endereço do captador
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Captador>
E clicar em "Editar"
E clicar em "Editar" na aba Endereços
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Pesquisa         | Captador         | MensagemDeSucesso            |
| Teste Captador 2 | Teste Captador 2 | Endereço criado com sucesso! |



@Cenario5
@Automatizar
@Captador
Esquema do Cenario: Excluir um endereço do captador
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Captador>
E clicar em "Editar"
E clicar em "Excluir" na aba Endereços
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa         | Captador         | MensagemDeSucesso              |
| Teste Captador 2 | Teste Captador 2 | Endereço excluído com sucesso! |



@Cenario6
@Automatizar
@Captador
Esquema do Cenario: Inativar um endereço do captador
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Captador>
E clicar em "Editar"
E clicar em "Editar" na aba Endereços
E selecionar <Ativo>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa         | Captador         | Ativo | MensagemDeSucesso            |
| Teste Captador 2 | Teste Captador 2 | Não   | Endereço criado com sucesso! |



@Cenario7
@Automatizar
@Captador
Esquema do Cenario: Inserir um contato no endereço do captador
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Captador>
E clicar em "Editar"
E clicar em "Editar" na aba Endereços
E clicar em "+Novo Contato"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa         | Captador         | MensagemDeSucesso            |
| Teste Captador 2 | Teste Captador 2 | Endereço criado com sucesso! |



@Cenario8
@Automatizar
@Captador
Esquema do Cenario: Visualizar mapa do endereço do captador
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Captador>
E clicar em "Editar"
E clicar em "Mapa" na aba Endereços
Entao apresenta o mapa do endereço

Exemplos:
| Pesquisa         | Captador         |
| Teste Captador 2 | Teste Captador 2 |



@Cenario9
@Automatizar
@Captador
Esquema do Cenario: Cadastrar um captador e cancelar o processo de criação
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando clicar em "+Captador"
E inserir <Nome>
E clicar em "Criar"
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Nome             |
| Teste Captador 2 |



@Cenario10
@Automatizar
@Captador
Esquema do Cenario: Editar um captador cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Captador>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa  | Captador  | MensagemDeRetorno                           |
| Teste AQS | Teste AQS | Captador "Teste AQS" atualizado com suceso! |



@Cenario11
@Automatizar
@Captador
Esquema do Cenario: Inativar um captador cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Captador>
E clicar em "Editar"
E selecionar <Ativo>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa  | Captador  | Ativo | MensagemDeRetorno                           |
| Teste AQS | Teste AQS | Não   | Captador "Teste AQS" atualizado com suceso! |



@Cenario12
@Automatizar
@Captador
Esquema do Cenario: Excluir um captador cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Captador>
E clicar em "Excluir"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa    | Captador    | MensagemDeRetorno              |
| Teste AQS 2 | Teste AQS 2 | Registro excluído com sucesso! |



@Cenario13
@Automatizar
@PesquisarCaptador
Cenario: Pesquisar um captador cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando clicar em "Pesquisar"
Entao apresenta todos os captadores criados e ativos



@Cenario14
@Automatizar
@LimparPesquisaCaptador
Cenario: Limpar os resultados de uma pesquisa do captador
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando clicar em "Limpar resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario15
@Automatizar
@FiltrarCaptador
Cenario: Filtrar captador cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta a atividade do filtro pesquisado



@Cenario16
@Automatizar
@AtualizarSincronizarSislocCaptador
Esquema do Cenario: Atualizar e sincronizar dados com Sisloc e captador
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando clicar em "Atualizar/Sincronizar com Sisloc"
E inserir <CodigoCaptadorSisloc>
Entao sincroniza a página com dados com Sisloc

Exemplos:
| CodigoCaptadorSisloc | MensagemDeRetorno                                     |
| 123                  | Captador 123 foi atualizada/sincronizada com sucesso! |



@Cenario17
@Automatizar
@AuditoriaCaptador
Cenario: Visualizar auditoria do captador
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando clicar em "Auditoria"
Entao apresenta a auditoria do captador


