#language: pt
#ArquivosDevolucao
#ServicesMobile


Funcionalidade: Inserir arquivos na devolucao 
  Como um usuário do Services Mobile 
  Eu quero inserir arquivos da atividade realizada na devolucao 
  Para ter documentos da atividade na devolucao 


Dado esteja logado no Services Mobile 


@Cenario1
@Manual
@ArquivosFotoDevolucao
Esquema do Cenario: Inserir foto em arquivos na devolucao
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "Arquivos"
Quando clicar em "Câmera"
E capturar foto
E clicar em "Ok" 
Entao imagem é anexada na devolucao 

Exemplos:
| Empresa | Devolucao |
| Matiz   | 4860-02   |



@Cenario2
@Manual
@FecharArquivosFotoDevolucao 
Esquema do Cenario: Fechar camera em arquivos da devolucao
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "Arquivos"
E clicar em "Câmera"
E capturar foto
E clicar em "Repetir"
Quando clicar para voltar 
Entao deve ser retornado para listagem dos arquivos 

Exemplos:
| Empresa | Devolucao |
| Matiz   | 4860-02   |



@Cenario3
@Manual
@ArquivosVideoDevolucao 
Esquema do Cenario: Inserir vídeo em arquivos na devolucao
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "Arquivos"
Quando clicar em "Filmadora"
E capturar vídeo
E clicar em "Ok" 
Entao vídeo é anexado na devolucao
E apresenta <MensagemArquivosVideoDevolucao>

Exemplos:
| Empresa | Devolucao | MensagemArquivosVideoDevolucao |
| Matiz   | 4860-02   | Arquivo anexado com sucesso    |



@Cenario4
@Manual
@FecharArquivosVideoDevolucao
Esquema do Cenario: Fechar filmadora em arquivos da devolucao
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "Arquivos"
E clicar em "Filmadora"
E capturar vídeo 
E clicar em "Repetir"
Quando clicar para voltar 
Entao deve ser retornado para listagem dos arquivos 

Exemplos:
| Empresa | Devolucao |
| Matiz   | 4860-02   |



@Cenario5
@Automatizar
@ExcluirArquivosDevolucao
Esquema do Cenario: Fechar filmadora em arquivos da devolucao
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "Arquivos"
Quando clicar na "Lixeira" 
E clicar em "Confirmar" 
Entao imagem é excluída 
E apresenta <MensagemExcluirArquivosDevolucao> 

Exemplos:
| Empresa | Devolucao | MensagemExcluirArquivosDevolucao |
| Matiz   | 4860-02   | Arquivo excluído com sucesso     |



@Cenario6
@Automatizar
@CancelarExclusaoArquivosDevolucao 
Esquema do Cenario: Fechar filmadora em arquivos da devolucao
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Devolucao> 
E e clicar em "Arquivos"
Quando clicar na "Lixeira" 
E clicar em "CANCELAR" 
Entao imagem não é excluída 

Exemplos:
| Empresa | Devolucao |
| Matiz   | 4860-02   |



@Cenario7
@Manual
@ArquivosFotoDevolucaoOffline  
Esquema do Cenario: Inserir foto em arquivos na devolucao
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E esteja no modo offline
E clicar em <Devolucao> 
E e clicar em "Arquivos"
Quando clicar em "Câmera"
E capturar foto
E clicar em "Ok" 
Entao imagem é anexada na devolucao 
E apresenta <MensagemArquivosFotoDevolucaoOffline>

Exemplos:
| Empresa | Devolucao | MensagemArquivosFotoDevolucaoOffline |
| Matiz   | 4860-02   | Arquivo anexado com sucesso          |



@Cenario8
@Automatizar
@ExcluirArquivosDevolucaoOffline
Esquema do Cenario: Fechar filmadora em arquivos da devolucao
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E esteja no modo offline
E clicar em <Devolucao> 
E e clicar em "Arquivos"
Quando clicar na "Lixeira" 
E clicar em "Confirmar" 
Entao imagem é excluída 
E apresenta <MensExclArqDevolucaoOff> 

Exemplos:
| Empresa | Devolucao | MensExclArqDevolucaoOff      |
| Matiz   | 4860-02   | Arquivo excluído com sucesso |
