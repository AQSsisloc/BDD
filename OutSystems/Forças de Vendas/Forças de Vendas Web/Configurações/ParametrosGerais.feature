#language: pt
#ParametrosGerais
#ForcaDeVendasWeb


Funcionalidade: Gerenciar permissões de acessos às funcionalidades 
  Como um usuário do Força de Vendas 
  Eu quero confirgurar os parâmetros 
  Para utilizar nos processos do força de vendas 


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@Geral
Esquema do Cenario: Habilitar bloqueio em atividades 
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Geral"
E esteja na coluna "Habilitar bloqueio em atividades" 
Quando clicar em "Editar"
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Desmarcado     | Parâmetro atualizado com sucesso ! |



@Cenario2
@Automatizar
@Geral
Esquema do Cenario: Habilitar navegação por abas
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Geral"
E esteja na coluna "Habilitar navegação por abas"
Quando clicar em "Editar"
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Desmarcado     | Parâmetro atualizado com sucesso ! |



@Cenario3
@Automatizar
@Cadastro
Esquema do Cenario: Utilizar somente letras maiúsculas 
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Cadastro"
E esteja na coluna "Utilizar somente letra maiúsculas"
Quando clicar em "Editar"
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Desmarcado     | Parâmetro atualizado com sucesso ! |


