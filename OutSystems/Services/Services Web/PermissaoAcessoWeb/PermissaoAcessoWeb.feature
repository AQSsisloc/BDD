#language: pt
#PermissaoAcessoWeb
#ServicesMobile


Funcionalidade: Permitir acesso às funcionalidades do Services Web
  Como um usuário do Services Web
  Eu quero acessar as funcionalidades do sistema 
  Para realizar tarefas atraves dos módulos do sistema


Dado esteja com conexão a internet 


@Cenario1
@Automatizar
@PermissaoAcessoWeb
Esquema do Cenario: Acessar sistema com usuário válido online
E clicar em "Usuário"
E preencher campo usário <Usuario>
E clicar em "Senha" 
E preenhcer campo Senha <Senha> 
E clicar em  "ENTRAR"
Quando clicar em "Services"
Entao acessa ao Services Web 

Exemplos:
| Usuario   | Senha  |
| Admin@dev | ad123* |



@Cenario2
@Automatizar
@PermissaoAcesso
Cenario: Acessar sistema sem informar usuário e senha 
Quando clicar em  "ENTRAR"
Entao valida usuário 
E sinaliza "Campo Obrigatório"



@Cenario3
@Automatizar
@PermissaoAcesso
Esquema do Cenario: Acessar sistema informando somente usuário
E clicar em usuário
E preencher campo Usário <Usuario>
E não preenhcer campo Senha 
Quando clicar em  "ENTRAR"
Entao valida usuário
E sinaliza "Campo Obrigatório"

Exemplos:
| Usuario   |
| Admin@dev |



@Cenario4
@Automatizar
@PermissaoAcesso
Esquema do Cenario: Acessar sistema informando somente senha
E esteja conectado a internet 
E não preencher campo Usário 
E clicar em "Senha" 
E preenhcer campo Senha <Senha> 
Quando clicar em  "ENTRAR"
Entao valida usuário
E sinaliza "Campo Obrigatório"

Exemplos:
| Senha  | 
| 123456 | 



@Cenario5
@Automatizar
@PermissaoAcesso
Esquema do Cenario: Sair do acesso 
E esteja logado no sistema com usuario <Usuario>
Quando clicar em "Sair"
Entao sai do sistema 

Exemplos: 
| Usuario   |
| admin@dev |



@Cenario6
@Automatizar
@PermissaoAcessoWeb
Esquema do Cenario: Acessar sistema com usuário inválido 
E clicar em "Usuário"
E preencher campo usário <Usuario>
E clicar em "Senha" 
E preenhcer campo Senha <Senha> 
Quando clicar em  "ENTRAR"
Entao valida usuario
E exibe mensagem <MensagemInvalido>

Exemplos:
| Usuario   | Senha  | MensagemInvalido                                       |
| Admin@dev | ad123* | Não foi encontrado Tenant referente ao alias informado |



@Cenario7
@Automatizar
@PermissaoAcessoWeb
Esquema do Cenario: Acessar sistema com senha inválido 
E clicar em "Usuário"
E preencher campo usário <Usuario>
E clicar em "Senha" 
E preenhcer campo Senha <Senha> 
Quando clicar em  "ENTRAR" 
Entao valida usuario
E exibe mensagem <MensagemInvalido>

Exemplos:
| Usuario   | Senha  | MensagemInvalido            |
| Admin@dev | ad123* | Usuário ou senha incorreta. |



@Cenario8
@Automatizar
@PermissaoAcessoWeb
Esquema do Cenario: Acessar sistema com usuario sem permissão   
E clicar em "Usuário"
E preencher campo usário <Usuario>
E clicar em "Senha" 
E preenhcer campo Senha <Senha> 
Quando clicar em  "ENTRAR" 
Entao valida usuario
E exibe mensagem <MensagemInvalido>

Exemplos:
| Usuario   | Senha  | MensagemInvalido            |
| Admin@dev | ad123* | Usuário ou senha incorreta. |



@Cenario09
@Automatizar
@MinhaConta
Esquema do Cenario: Acessar dados da conta 
E esteja logado ao Services Web
E clicar em "Menu"
Quando clicar na conta <Conta>
Entao exibe dados "Minha Conta" <MinhaConta>

Exemplos:
| Conta | MinhaConta |
| aqs   | aqs        |



@Cenari10
@Automatizar
@MinhaConta
Esquema do Cenario: Alterar nome da conta
E esteja logado ao Services Web
E clicar "Menu" 
E clicar na conta <Conta>
E clicar em "Nome completo"
E preecher nome <Nome>
Quando clicar em "Salvar"
Entao grava os dados 
E apresenta mensagem <MensagemNome>

Exemplos:
| Conta | Nome      | MensagemNome           |
| aqs   | aqs teste | Nome salvo com sucesso |



@Cenario11
@Automatizar
@MinhaConta
Esquema do Cenario: Alterar apelido da conta
E esteja logado ao Services Web
E clicar "Menu" 
E clicar na conta <Conta>
E clicar em "Como gostaria de ser chamdo?"
E preecher nome <Apelido>
Quando clicar em "Salvar"
Entao grava os dados 
E apresenta mensagem <MensagemApelido>

Exemplos:
| Conta | Nome      | MensagemNome              |
| aqs   | AQS TESTE | Apelido salvo com sucesso |



@Cenario12
@Manual
@MinhaConta
Esquema do Cenario: Adicionar foto
E esteja logado ao Services Web
E clicar "Menu" 
E clicar na conta <Conta>
E clicar em "Carregar Imagem"
E selecionar Imagem
Quando clicar em "Salvar"
Entao grava os dados 
E apresenta mensagem <MensagemImagem>

Exemplos:
| Conta | MensagemImagem           |
| aqs   | Imagem salvo com sucesso |



@Cenario13
@Manual
@MinhaConta
Esquema do Cenario: Remover foto
E esteja logado ao Services Web
E clicar "Menu" 
E clicar na conta <Conta>
E clicar em "Remover Imagem"
Quando clicar em "Sim"
E clicar em "Salvar"
Entao grava os dados 
E apresenta mensagem <MensagemExclusaoImagem>

Exemplos:
| Conta | MensagemExclusaoImagem   |
| aqs   | Imagem salvo com sucesso |



@Cenario14
@Automatizar
@MinhaConta
Esquema do Cenario: Selecionar Empresa Ativa
E esteja logado ao Services Web
E clicar "Menu" 
E clicar na empresa <Empresa>
Quando selecionar uma empresa <EmpresaSelecionada>
Entao altera empresa ativa  
E apresenta mensagem <MensagemEmpresa>

Exemplos:
| Empresa | EmpresaSelecionada | MensagemEmpresa           |
| MATRIZ  | BHLOCADORA         | Empresa Ativa: BHLOCADORA |
