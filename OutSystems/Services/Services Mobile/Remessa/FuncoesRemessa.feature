#language: pt
#FuncoesRemessa
#ServicesMobile


Funcionalidade: Executar funções adicionais na remessa
  Como um usuário do Services Mobile 
  Eu quero  executar funções na remessa  
  Para concluir remessa detalhadamente 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar
@BaixaComprovante
Esquema do Cenario: Baixar comprovante de entrega 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "+"
Quando clicar em "Baixar Comprovante de Entrega"
E clicar em "Modelo"
E seleciona modelo
E clicar em "Baixar" 
Entao  é baixado arquivo de comprovante 
E abre local do arquivo

Exemplos:
| Empresa | Remessa |
| Matiz   | 4860-03 |



@Cenario2
@Automatizar
@BaixaComprovanteOffline
Esquema do Cenario: Baixar comprovante de entrega 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E esteja no modo offline
E clicar em <Remessa> 
E e clicar em "+"
Quando clicar em "Baixar Comprovante de Entrega"
E clicar em "Modelo"
E seleciona modelo
E clicar em "Baixar" 
Entao  é exibido <MensagemBaixaComprovanteOffline>

Exemplos:
| Empresa | Remessa | MensagemBaixaComprovanteOffline       |
| Matiz   | 4860-03 | Não é possível baixar no modo offline |



@Cenario3
@Automatizar
@FecharBaixaComprovante
Esquema do Cenario: Fechar download do comprovante de entrega 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "+"
E clicar em "Baixar Comprovante de Entrega"
Quando clicar em "Fechar"
Entao  é retornado para tela de função.

Exemplos:
| Empresa | Remessa |
| Matiz   | 4860-03 |



@Cenario4
@Automatizar
@EnviarEmailRemessa
Esquema do Cenario: Enviar email pela remessa 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "+"
Quando clicar em "Enviar E-mail"
E preencher os campos 
E clicar "Enviar"
Entao email é enviado 

Exemplos:
| Empresa | Remessa |
| Matiz   | 4860-03 | 



@Cenario5
@Automatizar
@EnviarEmailRemessaOffline
Esquema do Cenario: Enviar email pela remessa em modo offline 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E esteja no modo offline
E clicar em <Remessa> 
E e clicar em "+"
Quando clicar em "Enviar E-mail"
E preencher os campos 
E clicar "Enviar"
Entao email não é enviado 
E apresenta <MensagemEnviarEmailDevolucaoOffline>  

Exemplos:
| Empresa | Remessa | MensagemEnviarEmailDevolucaoOffline |
| Matiz   | 4860-03 | Não foi possível enviar o emial     |



@Cenario6
@Automatizar
@FecharEnvioEmailRemessa
Esquema do Cenario: Fechar envio email pela remessa 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "+"
E clicar em "Enviar E-mail"
Quando clicar em "Fechar"  
Entao envio de email é fechado 

Exemplos:
| Empresa | Remessa |
| Matiz   | 4860-03 | 



@Cenario7
@Automatizar
@OcorrenciaRemessa
Esquema do Cenario: Fazer ocorrência na remessa 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "+"
Quando clicar em "Ocorrência(s)"
E clicar em "Nova Ocorrência"
E preencher os dados
E clicar em "Salvar"  
Entao  Ocorrência é salva 
E exibe <MensagemOcorrenciaRemessa>

Exemplos:
| Empresa | Remessa | MensagemOcorrenciaRemessa               |
| Matiz   | 4860-03 | Ocorrência "Teste" inserida com sucesso |



@Cenario8
@Automatizar
@FecharOcorrenciaRemessa
Esquema do Cenario: Fechar ocorrência na remessa 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "+"
E clicar em "Ocorrência(s)"
Quando clicar em "Fechar"  
Entao Ocorrência é fechada  

Exemplos:
| Empresa | Remessa |
| Matiz   | 4860-03 | 



@Cenario9
@Automatizar
@ExcluirOcorrenciaRemessa
Esquema do Cenario: Excluir ocorrência na remessa 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "+"
E clicar em "Ocorrência(s)"
Quando clicar na "Lixeira"  
E clicar em "CONFIRMAR"
Entao ocorrência é excluída
E apresenta <MensExcOcorrenciaRemessa>

Exemplos:
| Empresa | Remessa | MensExcOcorrenciaRemessa        |
| Matiz   | 4860-03 | Ocorrência excluída com sucesso |








