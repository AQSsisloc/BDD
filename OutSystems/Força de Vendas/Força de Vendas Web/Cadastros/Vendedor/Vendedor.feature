#language: pt
#Vendedor
#ForcaDeVendasWeb


Funcionalidade: Cadastrar um vendedor
  Como um usuário do Força de Vendas 
  Eu quero cadastrar um captador
  Para utilizar nos processos de oportunidade, conta e proposta


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@Vendedor
Esquema do Cenario: Cadastrar um vendedor de um pessoa já cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando clicar em "+Vendedor"
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
| Teste AQS | Teste AQS 1 | Vendedor "Teste AQS 1" criado com suceso! |



@Cenario2
@Automatizar
@Vendedor
Esquema do Cenario: Cadastrar um vendedor de um pessoa não cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Captador"
Quando clicar em "+Vendedor"
E inserir <Nome>
E clicar em "Criar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Nome             | MensagemDeSucesso                              |
| Teste Vendedor 1 | Vendedor "Teste Vendedor 1" criado com suceso! |



@Cenario3
@Automatizar
@Vendedor
Esquema do Cenario: Editar o cadastro do vendedor para inserir um endereço
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Vendedor>
E preencher os campos disponíveis
E clicar em "+Endereço"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Nome             | MensagemDeSucesso            |
| Teste Vendedor 2 | Endereço criado com sucesso! |



@Cenario4
@Automatizar
@Vendedor
Esquema do Cenario: Editar o cadastro do vendedor para editar um endereço
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Vendedor>
E clicar em "Editar"
E clicar em "Editar" na aba Endereço
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa         | Vendedor         | MensagemDeRetorno                |
| Teste Vendedor 2 | Teste Vendedor 2 | Endereço atualizado com sucesso! |



@Cenario5
@Automatizar
@Vendedor
Esquema do Cenario: Editar o cadastro do vendedor para excluir um endereço do captador
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Vendedor>
E clicar em "Editar"
E clicar em "Excluir" na aba Endereço
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa         | Captador         | MensagemDeRetorno              |
| Teste Captador 2 | Teste Captador 2 | Endereço excluído com sucesso! |



@Cenario6
@Automatizar
@Vendedor
Esquema do Cenario: Editar o cadastro do vendedor para visualizar mapa do endereço
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Vendedor>
E clicar em "Editar"
E clicar em "Mapa" na aba Endereço
Entao apresenta o mapa do endereço

Exemplos:
| Pesquisa         | Vendedor         |
| Teste Vendedor 2 | Teste Vendedor 2 |



@Cenario7
@Automatizar
@Vendedor
Esquema do Cenario: Editar o cadastro do vendedor para inserir uma assinatura da proposta
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Vendedor>
E clicar em "Editar"
E clicar em "Carregar Imagem" na aba Assinatura da Proposta
E selecionar imagem
E clicar em "Abrir"
Entao grava os dados da imagem

Exemplos:
| Pesquisa         | Vendedor         |
| Teste Vendedor 2 | Teste Vendedor 2 |



@Cenario8
@Automatizar
@Vendedor
Esquema do Cenario: Editar o cadastro do vendedor para remover uma assinatura da proposta
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Vendedor>
E clicar em "Editar"
E clicar em "Remover Imagem" na aba Assinatura da Proposta
E clicar em "Sim"
Entao remove os dados da imagem

Exemplos:
| Pesquisa         | Vendedor         |
| Teste Vendedor 2 | Teste Vendedor 2 |



@Cenario9
@Automatizar
@Vendedor
Esquema do Cenario: Editar o cadastro do vendedor para inserir uma assinatura e-mail
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Vendedor>
E clicar em "Editar"
E clicar em "Carregar Imagem" na aba Assinatura Email
E selecionar imagem
E clicar em "Abrir"
Entao grava os dados da imagem

Exemplos:
| Pesquisa         | Vendedor         |
| Teste Vendedor 2 | Teste Vendedor 2 |



@Cenario10
@Automatizar
@Vendedor
Esquema do Cenario: Editar o cadastro do vendedor para remover uma assinatura e-mail
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Vendedor>
E clicar em "Editar"
E clicar em "Remover Imagem" na aba Assinatura da Proposta
E clicar em "Sim"
Entao remove os dados da imagem

Exemplos:
| Pesquisa         | Vendedor         |
| Teste Vendedor 2 | Teste Vendedor 2 |



@Cenario11
@Automatizar
@Vendedor
Esquema do Cenario: Cadastrar um vendedor e cancelar o processo de criação
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando clicar em "+Vendedor"
E inserir <Nome>
E clicar em "Criar"
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Nome             |
| Teste Vendedor 3 |



@Cenario12
@Automatizar
@Vendedor
Esquema do Cenario: Editar um vendedor cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Vendedor>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa  | Vendedor  | MensagemDeRetorno                           |
| Teste AQS | Teste AQS | Vendedor "Teste AQS" atualizado com suceso! |



@Cenario13
@Automatizar
@Vendedor
Esquema do Cenario: Inativar um vendedor cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Vendedor>
E clicar em "Editar"
E selecionar <Ativo>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa  | Vendedor  | Ativo | MensagemDeRetorno                           |
| Teste AQS | Teste AQS | Não   | Vendedor "Teste AQS" atualizado com suceso! |



@Cenario14
@Automatizar
@Vendedor
Esquema do Cenario: Excluir um vendedor cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Vendedor>
E clicar em "Excluir"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa    | Vendedor    | MensagemDeRetorno              |
| Teste AQS 2 | Teste AQS 2 | Registro excluído com sucesso! |



@Cenario15
@Automatizar
@PesquisarVendedor
Cenario: Pesquisar um vendedor cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando clicar em "Pesquisar"
Entao apresenta todos os vendedores criados e ativos



@Cenario16
@Automatizar
@LimparPesquisaVendedor
Cenario: Limpar os resultados de uma pesquisa do vendedor
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando clicar em "Limpar resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario17
@Automatizar
@FiltrarVendedor
Cenario: Filtrar vendedor cadastrado
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta a atividade do filtro pesquisado



@Cenario18
@Automatizar
@AtualizarSincronizarSislocVendedor
Esquema do Cenario: Atualizar e sincronizar dados com Sisloc e vendedor
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando clicar em "Atualizar/Sincronizar com Sisloc"
E inserir <CodigoVendedorSisloc>
Entao sincroniza a página com dados com Sisloc

Exemplos:
| CodigoVendedorSisloc | MensagemDeRetorno                                     |
| 123                  | Vendedor 123 foi atualizada/sincronizada com sucesso! |



@Cenario19
@Automatizar
@AuditoriaVendedor
Cenario: Visualizar auditoria do vendedor
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Vendedor"
Quando clicar em "Auditoria"
Entao apresenta a auditoria do vendedor


