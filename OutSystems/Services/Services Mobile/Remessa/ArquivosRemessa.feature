#language: pt
#ArquivosRemessa
#ServicesMobile


Funcionalidade: Inserir arquivos na remessa 
  Como um usuário do Services Mobile 
  Eu quero inserir arquivos da atividade realizada na remessa 
  Para ter documentos da atividade na  remessa 


Dado esteja logado no Services Mobile 


@Cenario1
@Manual
@ArquivosFotoRemessa 
Esquema do Cenario: Inserir foto em arquivos na remessa
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "Arquivos"
Quando clicar em "Câmera"
E capturar foto
E clicar em "Ok" 
Entao imagem é anexada na remessa 

Exemplos:
| Empresa | Remessa |
| Matiz   | 4860-03 |



@Cenario2
@Manual
@FecharArquivosFotoRemessa 
Esquema do Cenario: Fechar camera em arquivos da remessa
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "Arquivos"
E clicar em "Câmera"
E capturar foto
E clicar em "Repetir"
Quando clicar para voltar 
Entao deve ser retornado para listagem dos arquivos 

Exemplos:
| Empresa | Remessa |
| Matiz   | 4860-03 |



@Cenario3
@Manual
@ArquivosVideoRemessa 
Esquema do Cenario: Inserir vídeo em arquivos na remessa
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "Arquivos"
Quando clicar em "Filmadora"
E capturar vídeo
E clicar em "Ok" 
Entao vídeo é anexado na remessa 

Exemplos:
| Empresa | Remessa |
| Matiz   | 4860-03 |



@Cenario4
@Manual
@FecharArquivosVideoRemessa 
Esquema do Cenario: Fechar filmadora em arquivos da remessa
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "Arquivos"
E clicar em "Filmadora"
E capturar vídeo 
E clicar em "Repetir"
Quando clicar para voltar 
Entao deve ser retornado para listagem dos arquivos 

Exemplos:
| Empresa | Remessa |
| Matiz   | 4860-03 |



@Cenario5
@Automatizar
@ExcluirArquivosRemessa 
Esquema do Cenario: Fechar filmadora em arquivos da remessa
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "Arquivos"
Quando clicar na "Lixeira" 
E clicar em "Confirmar" 
Entao imagem é excluída 
E apresenta <Mensagem> 

Exemplos:
| Empresa | Remessa | Mensagem                     |
| Matiz   | 4860-03 | Arquivo excluído com sucesso |



@Cenario5
@Automatizar
@CancelarExclusaoArquivosRemessa 
Esquema do Cenario: Fechar filmadora em arquivos da remessa
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Remessa> 
E e clicar em "Arquivos"
Quando clicar na "Lixeira" 
E clicar em "CANCELAR" 
Entao imagem não é excluída 

Exemplos:
| Empresa | Remessa | Mensagem                     |
| Matiz   | 4860-03 | Arquivo excluído com sucesso |



@Cenario6
@Manual
@ArquivosFotoRemessaOffline  
Esquema do Cenario: Inserir foto em arquivos na remessa
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E esteja no modo offline
E clicar em <Remessa> 
E e clicar em "Arquivos"
Quando clicar em "Câmera"
E capturar foto
E clicar em "Ok" 
Entao imagem é anexada na remessa 

Exemplos:
| Empresa | Remessa |
| Matiz   | 4860-03 |



@Cenario7
@Automatizar
@ExcluirArquivosRemessaOffline
Esquema do Cenario: Fechar filmadora em arquivos da remessa
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E esteja no modo offline
E clicar em <Remessa> 
E e clicar em "Arquivos"
Quando clicar na "Lixeira" 
E clicar em "Confirmar" 
Entao imagem é excluída 
E apresenta <Mensagem> 

Exemplos:
| Empresa | Remessa | Mensagem                     |
| Matiz   | 4860-03 | Arquivo excluído com sucesso |
