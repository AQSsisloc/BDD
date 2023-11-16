#language: pt
#ServicesUsuarios
#ServicesWeb


Funcionalidade: gerenciar cadastro de usuários 
  Como um usuário do Services Web
  Eu quero alterar os dados de usuário 
  Para controlar o acesso dos usuários ao Service


Dado Esteja logado no Services Web 


@Cenario1
@Manual
@ServicesUsuarios
Cenario: Pesquisar usuário 
E selecionar "Configurações"
E selecionar "Usuários"
Quando clicar "Pesquisar"
E preenhcer os dados 
E clicar "Lupa - Pesquisar"
Entao exibe dados  



@Cenario2
@Manual
@ServicesUsuarios
Cenario: Atualizar listagem 
E selecionar "Configurações"
E selecionar "Usuários"
Quando clicar "Atualizar"
Entao atualiza listagem 



@Cenario3
@Manual
@ServicesUsuarios
Esquema do Cenario: Mostrar Ativos/inativos  
E selecionar "Configurações"
E selecionar "Usuários"
Quando clicar <StatusUsuario>
Entao exibe usuários

Exemplos: 
| StatusUsuario |
| Ativo         |
| Inativo       |


@Cenario4
@Manual
@ServicesUsuarios
Esquema do Cenario: Sincronizar com Sisloc 
E selecionar "Configurações"
E selecionar "Usuários"
Quando clicar "Atualizar/Sincronizar com Sisloc"
E preencher "ID"
E confirmar "OK"
Entao sincroniza com Sisloc 
E retorna <MensagemSincronizacao>

Exemplos:
| MensagemSincronizacao                                                                                                  |
| Usuário ID 3 foi atualizada/sincronizada com sucesso! Ultima atualização desse registro no sisloc: 08/11/2023 18:08:16 |
                                                                                                                              


@Cenario5
@Manual
@ServicesUsuarios
Esquema do Cenario: Acesso Mobile 
E selecionar "Configurações"
E selecionar "Usuários"
E selecionar "Acesso Mobile"
Quando clicar <Acesso>
Entao grava os dados no <Usuario> 
E retorna <MensagemAcesso>

Exemplos:
| Acesso   | Usuario | MensagemAcesso                                   |
| Liberado | AQS     | Licença do usuário AQS foi alterada com sucesso! |
| Negado   | AQS     | Licença do usuário AQS foi alterada com sucesso! |



@Cenario6
@Manual
@ServicesUsuarios
Cenario: Inserir foto usuário   
E selecionar "Configurações"
E selecionar "Usuários"
Quando clicar "Ações"
E clicar "Editar Foto"
E clicar "Carregar Imagem"
E selecionar imagem 
Entao grava foto do usuário  



@Cenario7
@Manual
@ServicesUsuarios
Cenario: Remover foto usuário   
E selecionar "Configurações"
E selecionar "Usuários"
Quando clicar "Ações"
E clicar "Editar Foto"
E clicar "Remover Imagem"
E clicar "Sim"
Entao remove foto do usuário  



@Cenario8
@Manual
@ServicesUsuarios
Esquema do Cenario: Editar informações do usuário 
E selecionar "Configurações"
E selecionar "Usuários"
Quando clicar "Ações"
E clicar "Editar Informações"
E inserir <Nome>
E inserir <Apelido>
E inserir <Celular>
E inserir <Email>
E inserir <TimeZone>
E inserir <TokenAutentique>
E gerar <APIKey>
E configurar <Cor>
E configurar <Administrador>
E clicar "Salvar"
Entao grava os dados 
E retorna <MensagemUsuario>

Exemplos:
| Nome         | Apelido | Celular    | Email                      | TimeZone             | TokenAutentique | APIKey                               | Cor  | Administrador | MensagemUsuario          |
| Samuel Silva | Samuel  | 99999-9999 | samuel.silva@sisloc.com.br | (UTC-03:00) Brasília |                 | 8f067b30-a22d-4548-8e8a-a00c5041b629 | Azul | Marcado       | Edição salva com sucesso |



@Cenario9
@Manual
@ServicesUsuarios
Esquema do Cenario: Configurar acesso a empresa 
E selecionar "Configurações"
E selecionar "Usuários"
Quando clicar "Ações"
E clicar "Acesso Empresa"
E configurar <Padrao>
E configurar <PermitirAcesso>
E clicar "Salvar"
Entao grava os dados 
E retorna <MensagemEmpresa>

Exemplos:
| Padrao     | PermitirAcesso                                                            | MensagemEmpresa                |
| BHLOCADORA | BHLOCADORA,  IPATINGA, LOC MG, MATRIZ BH, RECIFE, RIO, SALGUEIRO, VITÓRIA | Configuração salva com sucesso |
| IPATINGA   | BHLOCADORA,  IPATINGA, LOC MG                                             | Configuração salva com sucesso |
| LOC MG     | LOC MG, MATRIZ BH, RECIFE, RIO                                            | Configuração salva com sucesso |
| MATRIZ BH  | MATRIZ BH                                                                 | Configuração salva com sucesso |
| RECIFE     | RECIFE, RIO, SALGUEIRO, VITÓRIA                                           | Configuração salva com sucesso |
| RIO        | RIO, BHLOCADORA                                                           | Configuração salva com sucesso |
| SALGUEIRO  | SALGUEIRO, VITÓRIA                                                        | Configuração salva com sucesso |
| VITÓRIA    | VITÓRIA, BHLOCADORA                                                       | Configuração salva com sucesso |



@Cenario10
@Manual
@ServicesUsuarios
Esquema do Cenario: Configurar permissões do usuário  
E selecionar "Configurações"
E selecionar "Usuários"
Quando clicar "Ações"
E clicar "Permissões"
E selecionar <Permissao> 
E clicar "Salvar"
Entao grava os dados 
E retorna <MensagemEmpresa>

Exemplos:
| Permissao               | MensagemEmpresa                |
| AdminPortalRole         | Configuração salva com sucesso |
| Assitente_ForcaDeVendas | Configuração salva com sucesso |
| Gerente_ForcaDeVendas   | Configuração salva com sucesso |
| GerenteRota             | Configuração salva com sucesso |
| GestaoAvistaUser        | Configuração salva com sucesso |
| ServicesUser            | Configuração salva com sucesso |
| VendedorForcaDeVendas   | Configuração salva com sucesso |



@Cenario11
@Manual
@ServicesUsuarios
Esquema do Cenario: Remover permissões do usuário  
E selecionar "Configurações"
E selecionar "Usuários"
Quando clicar "Ações"
E clicar "Permissões"
E selecionar <Permissao> 
E clicar "Remover"
E clicar "Salvar"
Entao grava os dados 
E retorna <MensagemEmpresa>

Exemplos:
| Permissao               | MensagemEmpresa                |
| AdminPortalRole         | Configuração salva com sucesso |
| Assitente_ForcaDeVendas | Configuração salva com sucesso |
| Gerente_ForcaDeVendas   | Configuração salva com sucesso |
| GerenteRota             | Configuração salva com sucesso |
| GestaoAvistaUser        | Configuração salva com sucesso |
| ServicesUser            | Configuração salva com sucesso |
| VendedorForcaDeVendas   | Configuração salva com sucesso |



@Cenario12
@Manual
@ServicesUsuarios
Esquema do Cenario: Trasnferir responsável   
E selecionar "Configurações"
E selecionar "Usuários"
Quando clicar "Ações"
E clicar "Transferir responsável"
E selecionar <ResponsavelDestino>
E clicar "Transferir Responsável"
Entao grava os dados 
E retorna <MensagemEmpresa>

Exemplos:
| ResponsavelDestino      | MensagemEmpresa                |
| AdminPortalRole         | Configuração salva com sucesso |





