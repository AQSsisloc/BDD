#language: pt
#RotaArquivos
#ServicesMobile


Funcionalidade: Inserir arquivos na atividade 
  Como um usuário do Services Mobile 
  Eu quero inserir arquivo na atividade 
  Para documentar o atendimento 


Dado esteja logado no Services Mobile 


@Cenario1
@AdicionaArquivoDiretorio
@Manual
Esquema do Cenario: Adicionar arquivos na atividade pelo diretorio 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar no ícone "Arquivo" na seção "Arquivos"
E clicar em "Arquivos"
E selecionar o arquivo
E clicar em "OK" 
Entao retorna para atividade 
E exibe <MensagemDeRetorno>
E grava arquivo na seção "Arquivos"

Exemplos:
| Empresa   | Rota  | Atividade          | MensagemDeRetorno          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE | Imagem anexada com sucesso |



@Cenario2
@AdicionaArquivoCamera
@Manual
Esquema do Cenario: Adicionar arquivos na atividade com camera frontal
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar no ícone "Arquivo" na seção "Arquivos"
E clicar em "Câmera"
E capturar foto 
E clicar em "OK" 
Entao retorna para atividade 
E exibe <MensagemDeRetorno>
E grava foto na seção "Arquivos"

Exemplos:
| Empresa   | Rota  | Atividade          | MensagemDeRetorno          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE | Imagem anexada com sucesso |



@Cenario3
@AdicionaArquivoFilmadora
@Manual
Esquema do Cenario: Adicionar arquivos na atividade com camera frontal
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar no ícone "Arquivo" na seção "Arquivos"
E clicar em "Câmera Filmadora"
E captura o video  
E clicar em "OK" 
Entao retorna para atividade 
E exibe <MensagemDeRetorno>
E grava video na seção "Arquivos"

Exemplos:
| Empresa   | Rota  | Atividade          | MensagemDeRetorno          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE | Imagem anexada com sucesso |

