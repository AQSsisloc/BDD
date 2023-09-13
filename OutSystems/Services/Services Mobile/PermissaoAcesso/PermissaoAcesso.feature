#language: pt
#PermissaoAcesso
#ServicesMobile


Funcionalidade: Permitir acesso às funcionalidades do sistema 
  Como um usuário do Services Mobile 
  Eu quero acessar as funcionalidades do sistema 
  Para realizar tarefas atraves dos módulos do sistema


Dado esteja logado no Services Mobile


@Cenario1
@Automatizar
@PermissaoAcesso
Esquema do Cenario: Acessar sistema com usuário válido online
E esteja conectado a internet 
E clicar em "Usuário"
E preencher campo usário <Usuario>
E clicar em "Senha" 
E preenhcer campo Senha <Senha> 
Quando clicar em  "ENTRAR"
Entao valida usuário
E acessa ao sistema

Exemplos:
| Usuario   | Senha  |
| Admin@tst | 123456 |



@Cenario2
@Automatizar
@PermissaoAcesso
Esquema do Cenario: Acessar sistema com usuário válido offline 
E esteja desconectado a internet 
E clicar em "Usuário"
E preencher campo usário <Usuario>
E clicar em "Senha" 
E preenhcer campo Senha <Senha> 
Quando clicar em  "ENTRAR"
Entao valida usuário
E acessa ao sistema
E exbibe mensagem modo offline <MensageOff>

Exemplos:
| Usuario   | Senha  | MensageOff           |
| Admin@tst | 123456 | Modo offline ativado |



@Cenario3
@Automatizar
@PermissaoAcesso
Esquema do Cenario: Acessar sistema sem informar usuário e senha 
E esteja conectado a internet 
Quando clicar em  "ENTRAR"
Entao valida usuário 
E apresenta mensagem <MensagemLogin>

Exemplos: 
| MensagemLogin                                            |
| "Não foi encontrado Tenant referente ao alias informado" |



@Cenario4
@Automatizar
@PermissaoAcesso
Esquema do Cenario: Acessar sistema informando somente usuário
E esteja conectado a internet 
E clicar em usuário
E preencher campo Usário <Usuario>
E não preenhcer campo Senha 
Quando clicar em  "ENTRAR"
Entao valida usuário
E exbibe mensagem modo offline <MensageOff>

Exemplos:
| MensagemLogin                                            |
| "Não foi encontrado Tenant referente ao alias informado" |



@Cenario5
@Automatizar
@PermissaoAcesso
Esquema do Cenario: Acessar sistema informando somente senha
E esteja conectado a internet 
E não preencher campo Usário 
E clicar em "Senha" 
E preenhcer campo Senha <Senha> 
Quando clicar em  "ENTRAR"
Entao valida usuário
E exbibe mensagem modo offline <MensageOff>

Exemplos:
| MensagemLogin                                            |
| "Não foi encontrado Tenant referente ao alias informado" |



@Cenario6
@Automatizar
@PermissaoAcesso
Esquema do Cenario: Acessar sistema com usuário sem empresa padrão selecionado
E esteja conectado a internet 
E clicar em usuário 
E preencher campo usuário <Usuario> 
E clicar em "Senha" 
E preenhcer campo Senha <Senha> 
E usuário não possua empresa padrão selecionada
Quando clicar em  "ENTRAR"
Entao valida usuário
E exbibe mensagem  <MensageEmpresa>

Exemplos:
| Usuario    | senha  | MensagemLogin                                                                    |
| aqstst@tst | 123456 | Integração Sisloc: Usuário de código "148" não possui empressa padrão cadastrada |



@Cenario7
@Automatizar
@PermissaoAcesso
Esquema do Cenario: Acessar sistema com usuário sem licença mobile liberada
E esteja conectado a internet 
E clicar em usuário 
E preencher campo usuário <Usuario> 
E clicar em "Senha" 
E preenhcer campo Senha <Senha> 
E usuário não possua licença mobile liberada
Quando clicar em  "ENTRAR"
Entao valida usuário
E exbibe mensagem modo offline <MensageEmpresa>

Exemplos:
| Usuario | senha  | MensagemLogin                                          |
| aqs@dev | 123456 | Usuário informado não está vinculado à licença mobile. |



@Cenario8
@Automatizar
@PermissaoAcesso
Esquema do Cenario: deslogar do acesso 
E esteja logado no sistema com usuario <Usuario>
E clicar em "Menu" 
Quando clicar em "Logout"
Entao desloga do sistema 

Exemplos: 
| Usuario   |
| admin@tst |




