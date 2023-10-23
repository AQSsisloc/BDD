#language: pt
#ServicesRegiao
#ServicesWeb


Funcionalidade: permitir o cadastro de reigões apra que as rotas sejam sugeridas automaticamente  
  Como um usuário do Services Web
  Eu quero cadastrar regioes de rotas  
  Para facilitar as atividades operacionais
 

Dado Esteja logado no Services Web 


@Cenario1
@Manual
@ServicesRegiao
Esquema do Cenario: Cadastrar região por bairros 
E parâmetro <ComposicaoRegiao> 
E clicar em "Cadastros"
E clicar em "Região"
E clicar "+ Região"
E preenhcer <Descricao>
E selecionar os dados 
Quando clicar "Salvar"
E preenhcer os dados 
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemCriacao>

Exemplos:
| ComposicaoRegiao | Descrição     | MensagemCriacao                         |
| Por Bairros      | Teste bairros | Região Teste bairros salva com sucesso! |



@Cenario2
@Manual
@ServicesRegiao
Esquema do Cenario: Cadastrar bairros na região 
E parâmetro <ComposicaoRegiao> 
E clicar em "Cadastros"
E clicar em "Região"
E clicar ações <Regiao> 
Quando clicar "+ Bairro"
E preenhcer <Bairro>
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemCriacao>

Exemplos:
| ComposicaoRegiao | Regiao     | Bairro   | MensagemCriacao                         |
| Por Bairros      | teste desc | Planalto | Bairro Planalto cadastrado com sucesso! |



@Cenario3
@Manual
@ServicesRegiao
Esquema do Cenario: Cadastrar região por faixa de CEP
E parâmetro <ComposicaoRegiao> 
E clicar em "Cadastros"
E clicar em "Região"
Quando clicar "+ Região"
E preenhcer <Descricao>
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemCriacao>

Exemplos:
| ComposicaoRegiao  | Descricao  | MensagemCriacao                     |
| Por faixas de CEP | Teste desc | Região Teste desc salva com sucesso |



@Cenario4
@Manual
@ServicesRegiao
Esquema do Cenario: Cadastrar faixa de cep na região 
E parâmetro <ComposicaoRegiao> 
E clicar em "Cadastros"
E clicar em "Região"
E clicar ações <Regiao>
Quando clicar "+ Faixa CEP"
E preenhcer os dados
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemCriacao>

Exemplos:
| ComposicaoRegiao  | Descricao  | MensagemCriacao                     |
| Por faixas de CEP | Teste  | Faixa de CEP salva com sucesso |


@Cenario5
@Manual
@ServiceFuncionario
Cenario: Filtros  
E clicar em "Cadastros"
E clicar em "Região"
Quando filtros 
E preenhcer os dados 
E clicar "Filtrar"
Entao exibe dados do filtros



@Cenario6
@Automatizar
@ServiceFuncionario
Esquema do Cenario: Excluir funcionário 
E clicar em "Cadastros"
E clicar em "Região"
Quando clicar "Excluir" <Regiao>
E confirmar "Sim"
Entao exclui o dado   
E retorna <MensagemExclusao>

Exemplos:
| Regiao  | MensagemExclusao                     |
| teste 3 | Região teste 3 removido com sucesso! |



@Cenario7
@Manual
@ServiceFuncionario
Cenario: Atualizar listagem
E clicar em "Cadastros"
E clicar em "Região"
Quando clicar "Atualizar" 
Entao atualiza listagem



@Cenario8
@Automatizar
@ServicesRegiao
Esquema do Cenario: Excluir faixa de CEP
E parâmetro <ComposicaoRegiao> 
E clicar em "Cadastros"
E clicar em "Região"
E clicar ações <Regiao>
Quando clicar "Excluir"
E confirmar "Sim"
Entao grava os dados 
E apresenta <MensagemExclusao>

Exemplos:
| ComposicaoRegiao  | Regiao | MensagemCriacao                   |
| Por faixas de CEP | teste  | Faixa de CEP removida com sucesso |




@Cenario9
@Manual
@ServicesRegiao
Esquema do Cenario: Editar região
E parâmetro <ComposicaoRegiao> 
E clicar em "Cadastros"
E clicar em "Região"
E clicar ações <Regiao>
Quando clicar "Editar"
E preenhcer os dados
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemExclusao>

Exemplos:
| ComposicaoRegiao  | Regiao   | MensagemCriacao                         |
| Por faixas de CEP | teste    | Faixa de CEP salva com sucesso          |
| Por Bairros       | Região 1 | Bairro Funcionários editado com sucesso |



