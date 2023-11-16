#language: pt
#ParametrosGerais
#ServicesWeb


Funcionalidade: Configuração de parâmetros para o Services
  Como um usuário do Services Web
  Eu quero configurar os parâmetros de compotamento do Services 
  Para utilizar o sistema da forma adequada ao parâmetro 
 

Dado Esteja logado no Services Web 


@Cenario1
@Automatizar
@ParametrosGeraisGeral
Esquema do Cenario: Selecionar Entrada de Produtos no Almoxarifado Móvel
E selecionar empresa <Empresa>
E selecionar "Configurações"
E selecionar "Parâmetros Gerais"
E esteja na aba "Geral"
E esteja na coluna "Entrada de Produtos no Almoxarifado Móvel" 
Quando clicar em "Editar"
E clicar em "Salvar"
Entao grava os dados do <ParametroAtual>
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Marcado        | Parâmetro atualizado com sucesso ! |
| Matriz  | Desmarcado     | Parâmetro atualizado com sucesso ! |



@Cenario02
@Automatizar
@ParametrosGeraisRota
Esquema do Cenario: Selecionar editar nas ações da aba Rota
E selecionado empresa <Empresa>
E selecionar "Configurações"
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



@Cenario03
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
Entao grava os dados 
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                 | Editar             | MensagemDeSucesso                  |
| Matriz  | Endereço inicial rota  | Primeira atividade | Parâmetro atualizado com sucesso ! |
| Matriz  | Endereço inicial rota  |                    | Parâmetro atualizado com sucesso ! |
| Matriz  | Composição das regiões | Por bairro         | Parâmetro atualizado com sucesso ! |
| Matriz  | Composição das regiões |                    | Parâmetro atualizado com sucesso ! |
| Matriz  | Endereço final rota    | Última atividade   | Parâmetro atualizado com sucesso ! |
| Matriz  | Endereço final rota    |                    | Parâmetro atualizado com sucesso ! |



@Cenario04
@Manual
@ParametrosGeraisRota
Esquema do Cenario: Editar ações na aba Rota
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Rota"
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                                            | Editar                                                                                                                                        | MensagemDeSucesso                  |
| Matriz  | Número de WhatsApp remetente                      | 31997535474                                                                                                                                   | Parâmetro atualizado com sucesso ! |
| Matriz  | Número de WhatsApp remetente                      |                                                                                                                                               | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp motorista está a caminho | O motorista [MOTORISTA] da [TIPOATIVIDADE] - [NUMERO] referente ao(s) equipamento(s) [PRODUTOS] está a caminho do seu endereço: [ENDERECO].   | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp motorista está a caminho |                                                                                                                                               | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp motorista chegou         | O motorista [MOTORISTA] da [TIPOATIVIDADE] - [NUMERO] referente ao(s) equipamento(s) [PRODUTOS] acabou de chegar ao seu endereço: [ENDERECO]. | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp motorista chegou         |                                                                                                                                               | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp atividade concluída      | O motorista [MOTORISTA] acabou de concluir a [TIPOATIVIDADE] - [NUMERO] referente ao(s) equipamento(s) [PRODUTOS].                            | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo mensagem WhatsApp atividade concluída      |                                                                                                                                               | Parâmetro atualizado com sucesso ! |



@Cenario05
@Manual
@ParametrosGeraisOrdemDeManutencao
Esquema do Cenario: Selecionar opções nas ações da aba Ordem de Manutenção
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Ordem de Manutenção"
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados 
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                  | Editar                                                                                                                                                                                                                                                     | MensagemDeSucesso                  |
| Matriz  | CC email                | samuel.silva@sisloc.com.br                                                                                                                                                                                                                                 | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo de documento     | Teste                                                                                                                                                                                                                                                      | Parâmetro atualizado com sucesso ! |
| Matriz  | Template assunto email  | [NOMEEMPRESA] - OM - [NUMEROOM] - [NOMECONTATO]                                                                                                                                                                                                            | Parâmetro atualizado com sucesso ! |
| Matriz  | Template mensagem email | <p>[NOMECONTATO],<br><br>SEGUE ORDEM DE MANUTENÇÃO [NUMEROOM], REFERENTE AO EQUIPAMENTO [EQUIPAMENTOOM] / [PATRIMONIOOM].<br><br>ATENCIOSAMENTE,<br>[NOMECONTATO] [NOMEUSUARIO] [NUMEROOM] [OBSERVACAOOM] [NOMEEMPRESA] [EQUIPAMENTOOM] [PATRIMONIOOM]</p> | Parâmetro atualizado com sucesso ! |



@Cenario06
@Automatizar
@ParametrosGeraisChecklist
Esquema do Cenario: Selecionar editar opções nas ações da aba Checklist
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Checklist"
E esteja na <Coluna>
Quando selecionar <Editar>
E clicar em "Salvar"
Entao grava os dados 
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                                           | Editar     | MensagemDeSucesso                  |
| Matriz  | Permitir selecionar foto da galeria no checklist | Marcado    | Parâmetro atualizado com sucesso ! |
| Matriz  | Permitir selecionar foto da galeria no checklist | Desmarcado | Parâmetro atualizado com sucesso ! |
| Matriz  | Resolução máxima das fotos                       | SD         | Parâmetro atualizado com sucesso ! |
| Matriz  | Resolução máxima das fotos                       | HD         | Parâmetro atualizado com sucesso ! |
| Matriz  | Resolução máxima das fotos                       | Full HD    | Parâmetro atualizado com sucesso ! |
| Matriz  | Resolução máxima das fotos                       | 2k         | Parâmetro atualizado com sucesso ! |



@Cenario07
@Manual
@ParametrosGeraisChecklist
Esquema do Cenario: Selecionar opções nas ações da aba Checklist
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Checklist"
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados 
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                  | Editar                                                                                      | MensagemDeSucesso                  |
| Matriz  | CC email                | samuel.silva@sisloc.com.br                                                                  | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo de documento     | TESTE CHECKLIST                                                                             | Parâmetro atualizado com sucesso ! |
| Matriz  | Template assunto email  | [IDCHECKLIST] [NOMEEMPRESA]                                                                 | Parâmetro atualizado com sucesso ! |
| Matriz  | Template mensagem email | [IDCHECKLIST][EQUIPAMENTOCHECKLIST][PATRIMONIOCHECKLIST][RESPONSAVELCHECKLIST][NOMEEMPRESA] | Parâmetro atualizado com sucesso ! |



@Cenario08
@Manual
@ParametrosGeraisRemessa
Esquema do Cenario: Selecionar opções nas ações da aba Remessa 
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Remessa"
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                  | Editar                                                                                                                                                                | MensagemDeSucesso                  |
| Matriz  | CC email                | samuel.silva@sisloc.com.br                                                                                                                                            | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo de documento     | TESTE REMESSA                                                                                                                                                         | Parâmetro atualizado com sucesso ! |
| Matriz  | Template assunto email  | Nome empresa: [NOMEEMPRESA], Remessa: [NUMEROREMESSA], Contato: [NOMECONTATO] e Cliente: [NOMECLIENTE]                                                                | Parâmetro atualizado com sucesso ! |
| Matriz  | Template mensagem email | Nome empresa: [NOMEEMPRESA];Número remessa: [NUMEROREMESSA];Contato: [NOMECONTATO];Cliente: [NOMECLIENTE];Endereço entrega: [ENDERECOENTREGA] e Produtos: [PRODUTOS]. | Parâmetro atualizado com sucesso ! |



@Cenario09
@Manual
@ParametrosGeraisDevolução
Esquema do Cenario: Selecionar opções nas ações da aba Devolução
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Devolução"
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                  | Editar                                                                                                                                                         | MensagemDeSucesso                  |
| Matriz  | CC email                | samuel.silva@sisloc.com.br                                                                                                                                     | Parâmetro atualizado com sucesso ! |
| Matriz  | Modelo de documento     | TESTE DEVOLUÇÃO                                                                                                                                                | Parâmetro atualizado com sucesso ! |
| Matriz  | Template assunto email  | Nome empresa:[NOMEEMPRESA], Nº devolucao: [NUMERODEVOLUCAO], Nome contato: [NOMECONTATO] e Nome cliente: [NOMECLIENTE].                                        | Parâmetro atualizado com sucesso ! |
| Matriz  | Template mensagem email | Nome empresa: [NOMEEMPRESA];N° Devolução: [NUMERODEVOLUCAO];Contato: [NOMECONTATO];Cliente: [NOMECLIENTE];Endereço: [ENDERECORETIRADA] e Produtos: [PRODUTOS]. | Parâmetro atualizado com sucesso ! |



@Cenario10
@Manual
@ParametrosGeraisSislocMessenger
Esquema do Cenario: Editar ações na aba Sisloc Messenger
E selecionado empresa <Empresa>
E selecionar "Configuração"
E selecionar "Parâmetros Gerais"
E esteja na aba "Sisloc Messenger"
E esteja na <Coluna>
Quando inserir no <Editar>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Coluna                     | Editar | MensagemDeSucesso                  |
| Matriz  | Sisloc Messenger (Domínio) |        | Parâmetro atualizado com sucesso ! |
| Matriz  | Sisloc Messenger (Domínio) |        | Parâmetro atualizado com sucesso ! |
| Matriz  | Sisloc Messenger (Login)   |        | Parâmetro atualizado com sucesso ! |
| Matriz  | Sisloc Messenger (Login)   |        | Parâmetro atualizado com sucesso ! |



@Cenario11
@Manual
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
| Empresa | Coluna                   | Editar | ParametroAtual | MensagemDeSucesso                  |
| Matriz  | Sisloc Messenger (Senha) |        |                | Parâmetro atualizado com sucesso ! |
| Matriz  | Sisloc Messenger (Senha) |        |                | Parâmetro atualizado com sucesso ! |



@Cenario12
@Manual
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



@Cenario13
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



@Cenario14
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



@Cenario15
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
