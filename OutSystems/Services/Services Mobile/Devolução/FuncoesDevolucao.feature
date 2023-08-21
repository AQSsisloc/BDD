#language: pt
#FuncoesDevolucao
#ServicesMobile


Funcionalidade: Executar funções adicionais na devolucao
  Como um usuário do Services Mobile 
  Eu quero  executar funções na devolucao  
  Para concluir devolucao detalhadamente 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar
@BaixaComprovante
Esquema do Cenario: Baixar comprovante de entrega 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "+"
Quando clicar em "Baixar Comprovante de Entrega"
E clicar em "Modelo"
E seleciona modelo
E clicar em "Baixar" 
Entao  é baixado arquivo de comprovante 
E abre local do arquivo

Exemplos:
| Empresa | Devolucao |
| Matiz   | 4860-02   |



@Cenario2
@Automatizar
@BaixaComprovanteOffline
Esquema do Cenario: Baixar comprovante de entrega 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E esteja no modo offline
E clicar em <Devolucao> 
E e clicar em "+"
Quando clicar em "Baixar Comprovante de Entrega"
E clicar em "Modelo"
E seleciona modelo
E clicar em "Baixar" 
Entao  é exibido <MensagemBaixaComprovanteOffline>

Exemplos:
| Empresa | Devolucao | MensagemBaixaComprovanteOffline       |
| Matiz   | 4860-02   | Não é possível baixar no modo offline |



@Cenario3
@Automatizar
@FecharBaixaComprovante
Esquema do Cenario: Fechar download do comprovante de entrega 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "+"
E clicar em "Baixar Comprovante de Entrega"
Quando clicar em "Fechar"
Entao  é retornado para tela de função.

Exemplos:
| Empresa | Devolucao |
| Matiz   | 4860-02   |



@Cenario4
@Automatizar
@EnviarEmailDevolucao
Esquema do Cenario: Enviar email pela devolucao 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "+"
Quando clicar em "Enviar E-mail"
E preencher os campos 
E clicar "Enviar"
Entao email é enviado 

Exemplos:
| Empresa | Devolucao |
| Matiz   | 4860-02   |



@Cenario5
@Automatizar
@EnviarEmailDevolucaoOffline
Esquema do Cenario: Enviar email pela devolucao em modo offline 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E esteja no modo offline
E clicar em <Devolucao> 
E e clicar em "+"
Quando clicar em "Enviar E-mail"
E preencher os campos 
E clicar "Enviar"
Entao email não é enviado 
E apresenta <MensagemEnviarEmailDevolucaoOffline> 

Exemplos:
| Empresa | Devolucao | MensagemEnviarEmailDevolucaoOffline |
| Matiz   | 4860-02   | Não foi possível enviar o emial     |



@Cenario6
@Automatizar
@FecharEnvioEmailDevolucao
Esquema do Cenario: Fechar envio email pela devolucao
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "+"
E clicar em "Enviar E-mail"
Quando clicar em "Fechar"  
Entao envio de email é fechado 

Exemplos:
| Empresa | Devolucao |
| Matiz   | 4860-02   |



@Cenario7
@Automatizar
@OcorrenciaDevolucao
Esquema do Cenario: Fazer ocorrência na devolucao
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "+"
Quando clicar em "Ocorrência(s)"
E clicar em "Nova Ocorrência"
E preencher os dados
E clicar em "Salvar"  
Entao  Ocorrência é salva 
E exibe <MensagemOcorrenciaDevolucao>

Exemplos:
| Empresa | Devolucao | MensagemOcorrenciaDevolucao             |
| Matiz   | 4860-02   | Ocorrência "Teste" inserida com sucesso |



@Cenario8
@Automatizar
@FecharOcorrenciaDevolucao
Esquema do Cenario: Fechar ocorrência na devolucao 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "+"
E clicar em "Ocorrência(s)"
Quando clicar em "Fechar"  
Entao Ocorrência é fechada  

Exemplos:
| Empresa | Devolucao |
| Matiz   | 4860-02   |



@Cenario9
@Automatizar
@ExcluirOcorrenciaDevolucao
Esquema do Cenario: Excluir ocorrência na devolucao
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "+"
E clicar em "Ocorrência(s)"
Quando clicar na "Lixeira"  
E clicar em "CONFIRMAR"
Entao ocorrência é excluída
E apresenta <MensExcOcorrenciaDevolucao>

Exemplos:
| Empresa | Devolucao | MensExcOcorrenciaDevolucao      |
| Matiz   | 4860-02   | Ocorrência excluída com sucesso |








