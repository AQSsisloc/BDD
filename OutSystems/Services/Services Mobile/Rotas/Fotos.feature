#language: pt
#AbrirMapa
#ServicesMobile


Funcionalidade: Inserir fotos na atividade 
  Como um usuário do Services Mobile 
  Eu quero inserir fotos na atividade 
  Para comprovar o atendimento realizado 

Dado esteja logado no Services Mobile

@Cenario1
@AdicionaFotosTraseira
@Manual
Esquema do Cenario: Adicionar fotos na atividade com camera traseira
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar no ícone "Foto" na seção "Fotos"
Entao abre a camera para realizar captura
E clicar em "Captura"
E exibe <MensagemDeRetorno>
E exibe foto capturada na seção "Fotos"

Exemplos:
| Empresa   | Rota  | Atividade          | MensagemDeRetorno          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE | Imagem anexada com sucesso |

@Cenario2
@AdicionaFotosTraseiraFlash
@Manual
Esquema do Cenario: Adicionar fotos na atividade com camera traseira com flash
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar no ícone "Foto" na seção "Fotos"
Entao abre a camera para realizar captura
E clicar em "Flash"
E clicar em "Captura"
E exibe <MensagemDeRetorno>
E exibe foto capturada na seção "Fotos"

Exemplos:
| Empresa   | Rota  | Atividade          | MensagemDeRetorno          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE | Imagem anexada com sucesso |


@Cenario3
@AdicionaFotosFrontal
@Manual
Esquema do Cenario: Adicionar fotos na atividade com camera frontal
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar no ícone "Foto" na seção "Fotos"
E clicar "Reverter"
Entao abre a camera frontal para realizar captura
E clica em "Captura"
E exibe <MensagemDeRetorno>
E exibe foto capturada na seção "Fotos"

Exemplos:
| Empresa   | Rota  | Atividade          | MensagemDeRetorno          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE | Imagem anexada com sucesso |


@Cenario4
@AdicionaFotosFrontalFlash
@Manual
Esquema do Cenario: Não exibir botão "Flash" com camera frontal 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar no ícone "Foto" na seção "Fotos"
E clicar "Reverter"
Entao abre a camera frontal para realizar captura
E não exibe botão "Flash"
E clica em "Captura"
E exibe <MensagemDeRetorno>
E exibe foto capturada na seção "Fotos"

Exemplos:
| Empresa   | Rota  | Atividade          | MensagemDeRetorno          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE | Imagem anexada com sucesso |



@Cenario5
@FecharCamera
@Manual
Esquema do Cenario: Fechar camera na adição de fotos
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar no ícone "Foto" na seção "Fotos"
E abrir camera para realizar captura
E clicar para voltar 
Entao camera deve ser fechada 
E retornar para tela da atividade

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE |


@Cenario5
@Automatizar
@ExcluirFoto 
Esquema do Cenario: Excluir fotos da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar sobre a foto
E clicar em excluir
E clica em "CONFIRMAR" 
Entao foto deve ser excluida da seção "Fotos"
E exibe <MensagemDeRetorno>

Exemplos:
| Empresa   | Rota  | Atividade          | MensagemDeRetorno           |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE | Imagem excluída com sucesso |


@Cenario6
@Automatizar
@CancelarExclusaoFoto 
Esquema do Cenario: Cancelar exclusao de foto da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar sobre a foto
E clicar em excluir
E clica em "CANCELAR" 
Entao deve retornar para foto 
E não excluí-la

Exemplos:
| Empresa   | Rota  | Atividade          |
| Matriz BH | 00361 | 1° TESTE ATIVIDADE |
