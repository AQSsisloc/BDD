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
@ParametrosGerais
Esquema do Cenario: Habilitar bloqueio em atividades 
E que esteja logado com usuário funcionário
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja com parametro "Atual" <ParametroAtual>
Quando clicar em "Editar"
E clicar em "Salvar"
Entao grava os dados parametro "Atual" <ParametroAtual2>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | ParametroAtual | ParametroAtual2 | MensagemDeSucesso                  |
| Matriz  | Desmarcado     | Marcado         | Parâmetro atualizado com sucesso ! |



@Cenario2
@Automatizar
@ParametrosGerais
Esquema do Cenario: Desabilitar bloqueio em atividades 
E que esteja logado com usuário funcionário
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja com parametro "Atual" <ParametroAtual>
Quando clicar em "Editar"
E clicar em "Salvar"
Entao grava os dados parametro "Atual" <ParametroAtual2>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | ParametroAtual | ParametroAtual2 | MensagemDeSucesso                  |
| Matriz  | Marcado        | Desmarcado      | Parâmetro atualizado com sucesso ! |
