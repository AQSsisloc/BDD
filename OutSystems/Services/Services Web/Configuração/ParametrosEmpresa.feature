#language: pt
#ParametrosEmpresas 
#ServicesWeb


Funcionalidade: Configuração de parâmetros para o Services
  Como um usuário do Services Web
  Eu quero configurar os parâmetros de compotamento do Services 
  Para utilizar o sistema da forma adequada ao parâmetro 
 

Dado Esteja logado no Services Web 


@Cenario1
@Manual
@ParametrosEmpresasEmail
Cenario: Cadastrar documento 
E esteja logado como funcionário     
E clicar "configurações"
E clicar "Parâmetros Empresa"
E selecionar <Empresa>
E estiver na aba "Config.Email"
Quando clicar "Editar Configurações"
E estiver no <Parametro>
E estiver <Configurado>
E preencher dados de envio de email 
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemSalvamento>

Exemplos: 
| Empresa   | Parametro                   | Configurado | MensagemSalvamento               |
| MATRIZ BH | Enviar via Sisloc Messenger | Marcado     | Parâmetros gravados com sucesso! |
| MATRIZ BH | Enviar via Sisloc Messenger | Desmarcado  | Parâmetros gravados com sucesso! |
| MATRIZ BH | Usar SSL/TLS                | Marcado     | Parâmetros gravados com sucesso! |
| MATRIZ BH | Usar SSL/TLS                | Desmarcado  | Parâmetros gravados com sucesso! |
| MATRIZ BH | Usar credenciais padrão     | Marcado     | Parâmetros gravados com sucesso! |
| MATRIZ BH | Usar credenciais padrão     | Desmarcado  | Parâmetros gravados com sucesso! |



@Cenario2
@Manual
@ParametrosEmpresasEmail
Cenario: testar envio email 
E esteja logado como funcionário     
E clicar "configurações"
E clicar "Parâmetros Empresa"
E selecionar <Empresa>
E estiver na aba "Config.Email"
Quando clicar "Testar Configurações"
E esteja na <Aba>
E preencher os dados
E clicar "Enviar"
Entao envia email 
E apresenta <MensagemEnvio>

Exemplos: 
| Empresa   | Aba                      | MensagemEnvio                                |
| MATRIZ BH | Teste Email              | Email enviado. Verifique a caixa de entrada! |
| MATRIZ BH | Teste Calendário Outlook | Email enviado. Verifique a caixa de entrada! |



@Cenario3
@Automatico
@ParametrosEmpresasServices
Cenario: Parêmtros Services 
E esteja logado como funcionário     
E clicar "configurações"
E clicar "Parâmetros Empresa"
E selecionar <Empresa>
Quando clicar na aba "Services"
E estiver no <Parametro>
E estiver <Configurado>
E preencher <Quantidade>
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemSalvamento>

Exemplos: 
| Empresa   | Parametro                                                | Configurado | Quantidade | MensagemSalvamento     |
| MATRIZ BH | Integrar Documentos com Autentique                       | Marcado     | -          | Parâmetros atualizados |
| MATRIZ BH | Integrar Documentos com Autentique                       | Desmarcado  | -          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica OM                                 | Marcado     | 1          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica OM                                 | Desmarcado  | -          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Parte Diária                       | Marcado     | -          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Parte Diária                       | Desmarcado  | -          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist                          | Marcado     | -          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist de Equipamento           | Marcado     | 2          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist de Equipamento           | Desmarcado  | -          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist operacional Avulso       | Marcado     | 2          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist operacional Avulso       | Desmarcado  | -          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist operacional de Locação   | Marcado     | 2          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist operacional de Locação   | Desmarcado  | 2          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist operacional de Remessa   | Marcado     | 2          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist operacional de Remessa   | Desmarcado  | -          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist operacional de Devolução | Marcado     | 2          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist operacional de Devolução | Desmarcado  | -          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist operacional de OM        | Marcado     | 2          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Checklist operacional de OM        | Desmarcado  | -          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Remessa                            | Marcado     | 2          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Remessa                            | Desmarcado  | -          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Devolução                          | Marcado     | 2          | Parâmetros atualizados |
| MATRIZ BH | Assinatura eletrônica Devolução                          | Desmarcado  | -          | Parâmetros atualizados |



@Cenario4
@Automatico
@ParametrosEmpresasServices
Cenario: Alertas Services  
E esteja logado como funcionário     
E clicar "configurações"
E clicar "Parâmetros Empresa"
E selecionar <Empresa>
Quando clicar na aba "Services"
E estiver no <Parametro>
E estiver <Configurado>
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemSalvamento>

Exemplos: 
| Empresa   | Parametro                                                  | Configurado                                                      | MensagemSalvamento     |
| MATRIZ BH | Token Autentique                                           | 963fedfe7f2a68a695bbb3dbf345f4f768d6dcd1a39ff13188c3b7f438199684 | Parâmetros atualizados |
| MATRIZ BH | Email Autentique                                           | samuel.silva@sisloc.com.br                                       | Parâmetros atualizados |
| MATRIZ BH | Alerta sobre o vencimento do prazo                         | 0                                                                | Parâmetros atualizados |
| MATRIZ BH | Notificar os clientes sobre a rota por WhatsApp            | Marcado                                                          | Parâmetros atualizados |
| MATRIZ BH | Numero de WhatsApp                                         | -                                                                | Parâmetros atualizados |
| MATRIZ BH | Notificar os clientes sobre a atividade de remessa         | Marcado                                                          | Parâmetros atualizados |
| MATRIZ BH | Notificar os clientes sobre a atividade de remessa         | Desmarcado                                                       | Parâmetros atualizados |
| MATRIZ BH | Notificar os clientes sobre a atividade de devolução       | Marcado                                                          | Parâmetros atualizados |
| MATRIZ BH | Notificar os clientes sobre a atividade de devolução       | Desmarcado                                                       | Parâmetros atualizados |
| MATRIZ BH | Notificar os clientes sobre a atividade de pedido de venda | Marcado                                                          | Parâmetros atualizados |
| MATRIZ BH | Modelo mensagem WhatsApp motorista está a caminho          | .                                                                | Parâmetros atualizados |
| MATRIZ BH | Modelo mensagem WhatsApp motorista chegou                  | .                                                                | Parâmetros atualizados |
| MATRIZ BH | Modelo mensagem WhatsApp atividade concluída               | .                                                                | Parâmetros atualizados |
