#language: pt
#FotosRemessa
#ServicesMobile


Funcionalidade: Inserir fotos na remessa 
  Como um usuário do Services Mobile 
  Eu quero inserir fotos da atividade realizada na remessa 
  Para ter confirmação com imagens


Dado esteja logado no Services Mobile 


@Cenario1
@Manual
@InserirFotoRemessa
Esquema do Cenario: Inserir foto na remessa
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Remessa>
E <Remessa> esteja com situação "Em Andamento"
E clicar em "Fotos"
E clicar em "Imagem"
Quando clicar em "Capture"
Entao foto é capturada 
E exibe <MensagemInserirFotoRemessa> 

Exemplos:
| Empresa | Remessa | MensagemInserirFotoRemessa |
| Matriz  | 4860-03 | Imagem Anexada com sucesso |



@Cenario2
@Manual
@InserirFotoRemessaFrontal
Esquema do Cenario: Inserir foto na remessa com câmera frontal
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Remessa>
E <Remessa> esteja com situação "Em Andamento"
E clicar em "Fotos"
E clicar em "Imagem"
E clicar em "Reverter"
Quando clicar em "Capture"
Entao foto é capturada 
E exibe <MensagemInserirFotoRemessaFrontal> 

Exemplos:
| Empresa | Remessa | MensagemInserirFotoRemessaFrontal |
| Matriz  | 4860-03 | Imagem Anexada com sucesso        |



@Cenario3
@Manual
@FecharCameraRemessa 
Esquema do Cenario: Inserir foto na remessa
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Remessa>
E <Remessa> esteja com situação "Em Andamento"
E clicar em "Fotos"
E clicar em "Imagem"
Quando clicar em "Voltar"
Entao câmera é encerrada 
E retorna para tela das fotos anexadas 

Exemplos:
| Empresa | Remessa | 
| Matriz  | 4860-03 | 



@Cenario4
@Automatizar
@ExcluirFotoRemessa 
Esquema do Cenario: Excluir foto na remessa 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Remessa>
E clicar em "Fotos"
E clicar sobre a "Imagem"
Quando clicar na "Lixeira"
E clicar em "CONFIRMAR"
Entao Imagem é excluída
E exibe <MensagemExcluirFotoRemessa> 

Exemplos:
| Empresa | Remessa | MensagemExcluirFotoRemessa  |
| Matriz  | 4860-03 | Imagem excluída com sucesso |



@Cenario5
@Automatizar
@CancelarExclusaoFotoRemessa 
Esquema do Cenario: Cancelar exclusão de foto na remessa 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Remessa>
E clicar em "Fotos"
E clicar sobre a "Imagem"
E clicar na "Lixeira"
Quando clicar em "CANCELAR"
Entao Imagem não é excluída

Exemplos:
| Empresa | Remessa | 
| Matriz  | 4860-03 | 



@Cenario6
@Manual
@InserirFotoRemessaOffline
Esquema do Cenario: Inserir foto na remessa
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E esteja no modo offline
E clicar na <Remessa>
E <Remessa> esteja com situação "Em Andamento"
E clicar em "Fotos"
E clicar em "Imagem"
Quando clicar em "Capture"
Entao foto é capturada 
E exibe <MensagemInserirFotoRemessaOffline> 

Exemplos:
| Empresa | Remessa | MensagemInserirFotoRemessaOffline |
| Matriz  | 4860-03 | Imagem Anexada com sucesso        |



@Cenario7
@Automatizar
@ExcluirFotoRemessaOffline 
Esquema do Cenario: Excluir foto na remessa 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E esteja no modo offline 
E clicar na <Remessa>
E clicar em "Fotos"
E clicar sobre a "Imagem"
Quando clicar na "Lixeira"
E clicar em "CONFIRMAR"
Entao Imagem é excluída
E exibe <MensagemExcluirFotoRemessaOffline> 

Exemplos:
| Empresa | Remessa | MensagemExcluirFotoRemessaOffline |
| Matriz  | 4860-03 | Imagem excluída com sucesso       |
