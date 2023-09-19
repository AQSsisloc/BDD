#language: pt
#ParametrosGerais
#ForcaDeVendasWeb


Funcionalidade: Gerenciar parâmetros de acessos nas funcionalidades 
  Como um usuário do Força de Vendas 
  Eu quero configurar os parâmetros gerais
  Para utilizar nos processos do força de vendas 


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@ParametrosGeraisGeral
Esquema do Cenario: Selecionar campo habilitar bloqueio em atividades
E selecionar empresa <Empresa>
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
@ParametrosGeraisGeral
Esquema do Cenario: Selecionar campo habilitar navegação por abas
E selecionar empresa <Empresa>
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
@ParametrosGeraisCadastro
Esquema do Cenario: Selecionar campo utilizar somente letras maiúsculas
E selecionar empresa <Empresa>
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



@Cenario4
@Automatizar
@ParametrosGeraisConta
Esquema do Cenario: Editar classificação no campo define o valor padrão do campo "Classificação"
E selecionar empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Conta"
E esteja na coluna "Define o valor padrão do campo Classificação"
Quando clicar em "Editar"
E seleciona a <Classificacao>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Classificacao | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | A             | A              | Parâmetro atualizado com sucesso ! |
| Matriz  |               |                | Parâmetro atualizado com sucesso ! |



@Cenario5
@Automatizar
@ParametrosGeraisOportunidade
Esquema do Cenario: Editar campo "Previsão de fechamento" obrigatório
E selecionar empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Cadastro"
E esteja na coluna "Campo Previsão de fechamento obrigatório"
Quando clicar em "Editar"
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Desmarcado     | Parâmetro atualizado com sucesso ! |



@Cenario6
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Selecionar editar de ações dos detalhes gerais da proposta
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" no Detalhes Gerais da Proposta
E esteja na <Coluna>
Quando clicar em "Editar"
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                                                   | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Conta padrão como consumidor final                       | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Conta padrão como consumidor final                       | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Copiar dados da última proposta aprovada automaticamente | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Copiar dados da última proposta aprovada automaticamente | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Define o valor padrão do campo "Pública"                 | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Define o valor padrão do campo "Pública"                 | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Exibir a opção "Não informar endereço"                   | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Exibir a opção "Não informar endereço"                   | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Valor padrão do campo "Não informar endereço"            | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Valor padrão do campo "Não informar endereço"            | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Herdar origem ao criar a proposta                        | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Herdar origem ao criar a proposta                        | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Herdar segmento ao criar a proposta                      | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Herdar segmento ao criar a proposta                      | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Utilizar propostas de venda                              | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Utilizar propostas de venda                              | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Utilizar vendedor em sessão para consumidor final        | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Utilizar vendedor em sessão para consumidor final        | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Campo "interesse" obrigatório                            | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Campo "interesse" obrigatório                            | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Campo "captador" obrigatório                             | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Campo "captador" obrigatório                             | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Campo "Previsão de Fechamento" obrigatório               | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Campo "Previsão de Fechamento" obrigatório               | Desmarcado     | Parâmetro atualizado com sucesso ! |



@Cenario7
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Editar ações dos detalhes gerais da proposta
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" no Detalhes Gerais da Proposta
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                                   | Editar       | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Previsão de fechamento (dias)            | 15           | 15             | Parâmetro atualizado com sucesso ! |
| Matriz  | Previsão de fechamento (dias)            |              |                | Parâmetro atualizado com sucesso ! |
| Matriz  | Qtd. de dias para vencimento da proposta | 15           | 15             | Parâmetro atualizado com sucesso ! |
| Matriz  | Qtd. de dias para vencimento da proposta |              |                | Parâmetro atualizado com sucesso ! |
| Matriz  | Tipo de oportunidade padrão              | Obra privada | Obra privada   | Parâmetro atualizado com sucesso ! |
| Matriz  | Tipo de oportunidade padrão              |              |                | Parâmetro atualizado com sucesso ! |



@Cenario8
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Selecionar opções nas ações dos detalhes gerais da proposta
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" no Detalhes Gerais da Proposta
E esteja na <Coluna>
Quando selecionar no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                          | Editar                     | ParametroAtual             | MensagemDeSucesso                  |
| Matriz  | Tipo de proposta padrão         | Locação                    | Locação                    | Parâmetro atualizado com sucesso ! |
| Matriz  | Tipo de proposta padrão         |                            |                            | Parâmetro atualizado com sucesso ! |
| Matriz  | Vendedor padrão - Outras contas | Vendedor vinculado a conta | Vendedor vinculado a conta | Parâmetro atualizado com sucesso ! |
| Matriz  | Vendedor padrão - Outras contas |                            |                            | Parâmetro atualizado com sucesso ! |



@Cenario9
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Cancelar edição nas ações dos detalhes gerais da proposta
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" no Detalhes Gerais da Proposta
Quando clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Empresa |
| Matriz  |



@Cenario10
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Cancelar edição nas ações do envio da Rota por WhatsApp
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" no Envio da Rota por WhatsApp
Quando clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Empresa |
| Matriz  |



@Cenario11
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Selecionar editar ações da proposta de locação
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" na Proposta de Locação
E esteja na <Coluna>
Quando clicar em "Editar"
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                                          | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Bloquear vencimento e dias geração fatura       | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Bloquear vencimento e dias geração fatura       | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Dias geração fatura conforme tipo de locação    | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Dias geração fatura conforme tipo de locação    | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Dias vencimento fatura conforme tipo de locação | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Dias vencimento fatura conforme tipo de locação | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Mostrar campos de franquia na grid              | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Mostrar campos de franquia na grid              | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Mostrar opção "Serviço na remessa"              | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Mostrar opção "Serviço na remessa"              | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Relacionar serviços na remessa                  | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Relacionar serviços na remessa                  | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Dias previstos conforme tipo de locação         | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Dias previstos conforme tipo de locação         | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Serviço obrigatório                             | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Serviço obrigatório                             | Desmarcado     | Parâmetro atualizado com sucesso ! |



@Cenario12
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Editar ações da proposta de locação
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" na Proposta de Locação
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                                             | Editar      | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Qt. de dias para buscar valor de locação negociado | 10          | 10             | Parâmetro atualizado com sucesso ! |
| Matriz  | Qt. de dias para buscar valor de locação negociado |             |                | Parâmetro atualizado com sucesso ! |
| Matriz  | Tipo de contrato                                   | Composto 01 | Composto 01    | Parâmetro atualizado com sucesso ! |
| Matriz  | Tipo de contrato                                   |             |                | Parâmetro atualizado com sucesso ! |
| Matriz  | Tipo de locação                                    | Diária      | Diária         | Parâmetro atualizado com sucesso ! |
| Matriz  | Tipo de locação                                    |             |                | Parâmetro atualizado com sucesso ! |



@Cenario13
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Selecionar opções nas ações da proposta de locação
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" na Proposta de Locação
E esteja na <Coluna>
Quando selecionar no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                       | Editar                                                                   | ParametroAtual                                                           | MensagemDeSucesso                  |
| Matriz  | Tipo de fatura serviço extra | A - Fatura separadamente da locação, destacando cada serviço separamente | A - Fatura separadamente da locação, destacando cada serviço separamente | Parâmetro atualizado com sucesso ! |
| Matriz  | Tipo de fatura serviço extra |                                                                          |                                                                          | Parâmetro atualizado com sucesso ! |



@Cenario14
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Cancelar edição nas ações da proposta de locação
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" na Proposta de Locação
Quando clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Empresa |
| Matriz  |



@Cenario15
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Selecionar editar nas ações da proposta de venda
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" na Proposta de Venda
E esteja na <Coluna>
Quando selecionar no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna          | Editar  | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Aplicação venda | Revenda | Revenda        | Parâmetro atualizado com sucesso ! |
| Matriz  | Aplicação venda |         |                | Parâmetro atualizado com sucesso ! |



@Cenario16
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Editar ações da proposta de venda
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" na Proposta de Venda
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                        | Editar   | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Condição de pagamento (venda) | Revenda  | Revenda        | Parâmetro atualizado com sucesso ! |
| Matriz  | Condição de pagamento (venda) |          |                | Parâmetro atualizado com sucesso ! |
| Matriz  | Valor seguro                  | 28 dias  | 28 dias        | Parâmetro atualizado com sucesso ! |
| Matriz  | Valor seguro                  |          |                | Parâmetro atualizado com sucesso ! |
| Matriz  | Valor frete                   | R$100,00 | R$100,00       | Parâmetro atualizado com sucesso ! |
| Matriz  | Valor frete                   |          |                | Parâmetro atualizado com sucesso ! |
| Matriz  | Valor despesas                | R$100,00 | R$100,00       | Parâmetro atualizado com sucesso ! |
| Matriz  | Valor despesas                |          |                | Parâmetro atualizado com sucesso ! |



@Cenario17
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Cancelar edição nas ações da proposta de venda
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" na Proposta de Venda
Quando clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Empresa |
| Matriz  |



@Cenario18
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Selecionar editar nas ações da Aprovação
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" na Aprovação
E esteja na <Coluna>
Quando selecionar no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                               | Editar                                     | ParametroAtual                             | MensagemDeSucesso                  |
| Matriz  | Obrigatoriedade do email de cobrança | Informar conforme opção 'Enviar ND/NF por' | Informar conforme opção 'Enviar ND/NF por' | Parâmetro atualizado com sucesso ! |
| Matriz  | Obrigatoriedade do email de cobrança |                                            |                                            | Parâmetro atualizado com sucesso ! |



@Cenario19
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Cancelar edição nas ações da Aprovação
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" na Aprovação
Quando clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Empresa |
| Matriz  |



@Cenario20
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Selecionar editar ações do Envio da proposta por E-mail
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" no Envio da Proposta por E-mail
E esteja na <Coluna>
Quando selecionar no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna    | Editar              | ParametroAtual      | MensagemDeSucesso                  |
| Matriz  | Email (s) | Contato da Proposta | Contato da Proposta | Parâmetro atualizado com sucesso ! |
| Matriz  | Email (s) |                     |                     | Parâmetro atualizado com sucesso ! |



@Cenario21
@Automatizar
@ParametrosGeraisProposta
Esquema do Cenario: Editar ações do Envio da proposta por E-mail
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Proposta"
E clicar em "Ações" na Aprovação
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                   | Editar      | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Modelo de proposta email | Teste - PAT | Teste - PAT    | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo de proposta email |             |                | Parâmetro atualizado com sucesso ! |
| Matriz  | Template assunto email   | Teste - PAT | Teste - PAT    | Parâmetro atualizado com sucesso ! |
| Matriz  | Template assunto email   |             |                | Parâmetro atualizado com sucesso ! |
| Matriz  | Template mensagem email  | Teste - PAT | Teste - PAT    | Parâmetro atualizado com sucesso ! |
| Matriz  | Template mensagem email  |             |                | Parâmetro atualizado com sucesso ! |



@Cenario22
@Automatizar
@ParametrosGeraisRota
Esquema do Cenario: Selecionar editar nas ações da aba Rota
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Rota"
E esteja na <Coluna>
Quando clicar em "Editar"
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                                                      | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Contato na atividade                                        | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Contato na atividade                                        | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Endereco na atividade                                       | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Endereco na atividade                                       | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Impedir execução simultânea de rotas                        | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Impedir execução simultânea de rotas                        | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Responsável na atividade                                    | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Responsável na atividade                                    | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Permitir inserir fotos/arquivos na atividade após conclusão | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Permitir inserir fotos/arquivos na atividade após conclusão | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Notificar os clientes sobre a rota por WhatsApp             | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Notificar os clientes sobre a rota por WhatsApp             | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Notificar os clientes sobre a atividade de remessa          | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Notificar os clientes sobre a atividade de remessa          | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Notificar os clientes sobre a atividade de devolução        | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Notificar os clientes sobre a atividade de devolução        | Desmarcado     | Parâmetro atualizado com sucesso ! |
| Matriz  | Notificar os clientes sobre a atividade de pedido de venda  | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Notificar os clientes sobre a atividade de pedido de venda  | Desmarcado     | Parâmetro atualizado com sucesso ! |



@Cenario23
@Automatizar
@ParametrosGeraisRota
Esquema do Cenario: Selecionar opções nas ações da aba Rota
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Rota"
E esteja na <Coluna>
Quando selecionar <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                 | Editar             | ParametroAtual     | MensagemDeSucesso                  |
| Matriz  | Endereço inicial rota  | Primeira atividade | Primeira atividade | Parâmetro atualizado com sucesso ! |
| Matriz  | Endereço inicial rota  |                    |                    | Parâmetro atualizado com sucesso ! |
| Matriz  | Composição das regiões | Por bairro         | Por bairro         | Parâmetro atualizado com sucesso ! |
| Matriz  | Composição das regiões |                    |                    | Parâmetro atualizado com sucesso ! |
| Matriz  | Endereço final rota    | Última atividade   | Última atividade   | Parâmetro atualizado com sucesso ! |
| Matriz  | Endereço final rota    |                    |                    | Parâmetro atualizado com sucesso ! |



@Cenario24
@Automatizar
@ParametrosGeraisRota
Esquema do Cenario: Editar ações na aba Rota
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Rota"
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                                            | Editar                                                                                                                                        | ParametroAtual                                                                                                                                | MensagemDeSucesso                  |
| Matriz  | Número de WhatsApp remetente                      | 31997535474                                                                                                                                   | 31997535474                                                                                                                                   | Parâmetro atualizado com sucesso ! |
| Matriz  | Número de WhatsApp remetente                      |                                                                                                                                               |                                                                                                                                               | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp motorista está a caminho | O motorista [MOTORISTA] da [TIPOATIVIDADE] - [NUMERO] referente ao(s) equipamento(s) [PRODUTOS] está a caminho do seu endereço: [ENDERECO].   | O motorista [MOTORISTA] da [TIPOATIVIDADE] - [NUMERO] referente ao(s) equipamento(s) [PRODUTOS] está a caminho do seu endereço: [ENDERECO].   | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp motorista está a caminho |                                                                                                                                               |                                                                                                                                               | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp motorista chegou         | O motorista [MOTORISTA] da [TIPOATIVIDADE] - [NUMERO] referente ao(s) equipamento(s) [PRODUTOS] acabou de chegar ao seu endereço: [ENDERECO]. | O motorista [MOTORISTA] da [TIPOATIVIDADE] - [NUMERO] referente ao(s) equipamento(s) [PRODUTOS] acabou de chegar ao seu endereço: [ENDERECO]. | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp motorista chegou         |                                                                                                                                               |                                                                                                                                               | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp atividade concluída      | O motorista [MOTORISTA] acabou de concluir a [TIPOATIVIDADE] - [NUMERO] referente ao(s) equipamento(s) [PRODUTOS].                            | O motorista [MOTORISTA] acabou de concluir a [TIPOATIVIDADE] - [NUMERO] referente ao(s) equipamento(s) [PRODUTOS].                            | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp atividade concluída      |                                                                                                                                               |                                                                                                                                               | Parâmetro atualizado com sucesso ! |



@Cenario25
@Automatizar
@ParametrosGeraisSislocMessenger
Esquema do Cenario: Editar ações na aba Sisloc Messenger
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Sisloc Messenger"
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                     | Editar                               | ParametroAtual                       | MensagemDeSucesso                  |
| Matriz  | Sisloc Messenger (Domínio) | b5757cc0-6cf0-11ed-83f0-e37147765677 | b5757cc0-6cf0-11ed-83f0-e37147765677 | Parâmetro atualizado com sucesso ! |
| Matriz  | Sisloc Messenger (Domínio) |                                      |                                      | Parâmetro atualizado com sucesso ! |
| Matriz  | Sisloc Messenger (Login)   | aqs@sisloc.com.br                    | aqs@sisloc.com.br                    | Parâmetro atualizado com sucesso ! |
| Matriz  | Sisloc Messenger (Login)   |                                      |                                      | Parâmetro atualizado com sucesso ! |



@Cenario26
@Automatizar
@ParametrosGeraisSislocMessenger
Esquema do Cenario: Editar senha na aba Sisloc Messenger
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Sisloc Messenger"
E esteja na <Coluna>
Quando clicar em "Editar Senha"
E inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                   | Editar                               | ParametroAtual                       | MensagemDeSucesso                  |
| Matriz  | Sisloc Messenger (Senha) | b5757cc0-6cf0-11ed-83f0-e37147765677 | b5757cc0-6cf0-11ed-83f0-e37147765677 | Parâmetro atualizado com sucesso ! |
| Matriz  | Sisloc Messenger (Senha) |                                      |                                      | Parâmetro atualizado com sucesso ! |



@Cenario27
@Automatizar
@ParametrosGeraisSislocMessenger
Esquema do Cenario: Testar WhatsApp na aba Sisloc Messenger
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Sisloc Messenger"
Quando clicar em "Teste WhatsApp"
E inserir <De>
E inserir <Para>
E clicar em "OK"
Entao envia uma mensagem no WhatsApp informado
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | De          | Para        | MensagemDeSucesso                         |
| Matriz  | 31973125961 | 31973125961 | Mensagem no WhatsApp enviada com sucesso! |



@Cenario28
@Automatizar
@ParametrosGeraisSislocMessenger
Esquema do Cenario: Testar WhatsApp na aba Sisloc Messenger sem informar telefone
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Sisloc Messenger"
Quando clicar em "Teste WhatsApp"
E clicar em "OK"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa | MensagemDeRetorno  |
| Matriz  | Campo obrigatório! |



@Cenario29
@Automatizar
@ParametrosGeraisSislocMessenger
Esquema do Cenario: Testar E-mail na aba Sisloc Messenger
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Sisloc Messenger"
Quando clicar em "Teste E-mail"
E inserir <De>
E inserir <Para>
E clicar em "OK"
Entao envia uma mensagem no e-mail informado
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | De                    | Para              | MensagemDeSucesso    |
| Matriz  | noreply@sisloc.com.br | aqs@sisloc.com.br | enviada com sucesso! |



@Cenario30
@Automatizar
@ParametrosGeraisSislocMessenger
Esquema do Cenario: Testar E-mail na aba Sisloc Messenger sem informar e-mail
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Sisloc Messenger"
Quando clicar em "Teste E-mail"
E clicar em "OK"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa | MensagemDeRetorno  |
| Matriz  | Campo obrigatório! |


