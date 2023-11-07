#language: pt
#Regiao
#RegiaoWeb


Funcionalidade: Cadastrar uma região com vínculos dos bairros
  Como um usuário do Força de Vendas 
  Eu quero cadastrar uma região
  Para utilizar na proposta 


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@Regiao
Esquema do Cenario: Cadastrar uma região
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Região"
Quando clicar em "+Região"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| MensagemDeSucesso                 |
| Região região 1 salva com suceso! |



@Cenario2
@Automatizar
@Regiao
Esquema do Cenario: Cadastrar uma região duplicada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Região"
Quando clicar em "+Região"
E inserir <Nome>
E preencher os campos disponíveis
E clicar em "Salvar"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Nome       | MensagemDeRetorno                                                 |
| Teste AQS  | Região Teste AQS - Belo Horizonte/MG já cadastrada anteriormente! |



@Cenario3
@Automatizar
@Regiao
Esquema do Cenario: Cancelar o cadastro de uma região
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Região"
Quando clicar em "+Região"
E inserir <Nome>
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Nome        |
| Teste AQS 1 |



@Cenario4
@Automatizar
@Regiao
Esquema do Cenario: Editar uma região cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Região"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Regiao>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Pesquisa    | Regiao      | MensagemDeSucesso                           |
| Teste AQS 1 | Teste AQS 1 | Região "Teste AQS 1" atualizada com suceso! |



@Cenario5
@Automatizar
@Regiao
Esquema do Cenario: Excluir uma região cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Região"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Regiao>
E clicar em "Excluir"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa    | Região      | MensagemDeRetorno            |
| Teste AQS 2 | Teste AQS 2 | Região excluída com sucesso! |



@Cenario6
@Automatizar
@Regiao
Esquema do Cenario: Cadastrar um bairro na região
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Região"
E clicar em "+Região"
E preencher os campos disponíveis
E clicar em "Salvar"
Quando clicar em "+Bairro"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| MensagemDeSucesso                           |
| Bairro Funcionários cadastrado com sucesso! |



@Cenario7
@Automatizar
@Regiao
Esquema do Cenario: Editar um bairro na região
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Região"
E inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Regiao>
E clicar em "Editar"
Quando selecionar <Bairro>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Pesquisa    | Regiao      | Bairro       | MensagemDeSucesso                    |
| Teste AQS 2 | Teste AQS 2 | Funcionários | Bairro Floresta editado com sucesso! |



@Cenario8
@Automatizar
@Regiao
Esquema do Cenario: Excluir um bairro na região
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Região"
E inserir <Pesquisa>
E clicar em "Lupa"
E selecionar <Regiao>
E clicar em "Editar"
Quando selecionar <Bairro>
E clicar em "Excluir"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa    | Regiao      | Bairro       | MensagemDeSucesso            |
| Teste AQS 2 | Teste AQS 2 | Funcionários | Bairro removido com sucesso! |



@Cenario9
@Automatizar
@PesquisarRegiao
Cenario: Pesquisar uma região cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Região"
Quando clicar em "Pesquisar"
Entao apresenta todas as regiões criadas



@Cenario10
@Automatizar
@LimparPesquisaRegiao
Cenario: Limpar os resultados de uma pesquisa da região
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Região"
Quando clicar em "Limpar resultados"
Entao limpa os resultados do filtro da pesquisa 



@Cenario11
@Automatizar
@FiltrarRegiao
Cenario: Filtrar região cadastrada
E que esteja logado com usuário funcionário
E selecionar "Cadastros"
E selecionar "Região"
Quando clicar em "Filtro"
E inserir dados do filtro
E clicar em "Filtrar"
Entao apresenta a região do filtro pesquisado


