#language: pt
#FotosDevolucao
#ServicesMobile


Funcionalidade: Inserir fotos na devolucao 
  Como um usuário do Services Mobile 
  Eu quero inserir fotos dos equipamentos 
  Para ter confirmação com imagens 


Dado esteja logado no Services Mobile 


@Cenario1
@Manual
@InserirFotoDevolucao
Esquema do Cenario: Inserir foto na devolucao
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Devolucao>
E <Devolucao> esteja com situação "Em Andamento"
E clicar em "Fotos"
E clicar em "Imagem"
Quando clicar em "Capture"
Entao foto é capturada 
E exibe <MensagemInserirFotoDevolucao> 

Exemplos:
| Empresa | Devolucao | MensagemInserirFotoDevolucao |
| Matriz  | 4860-02   | Imagem Anexada com sucesso   |



@Cenario2
@Manual
@InserirFotoDevolucaoFrontal
Esquema do Cenario: Inserir foto na devolução com câmera frontal
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Remessa>
E <Remessa> esteja com situação "Em Andamento"
E clicar em "Fotos"
E clicar em "Imagem"
E clicar em "Reverter"
Quando clicar em "Capture"
Entao foto é capturada 
E exibe <MensagemInserirFotoDevolucaoFrontal> 

Exemplos:
| Empresa | Devolucao | MensagemInserirFotoDevolucaoFrontal |
| Matriz  | 4860-02   | Imagem Anexada com sucesso          |



@Cenario3
@Manual
@FecharCameraDevolucao 
Esquema do Cenario: Inserir foto na devolução
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Devolucao>
E <Devolucao> esteja com situação "Em Andamento"
E clicar em "Fotos"
E clicar em "Imagem"
Quando clicar em "Voltar"
Entao câmera é encerrada 
E retorna para tela das fotos anexadas 

Exemplos:
| Empresa | Devolucao |
| Matriz  | 4860-02   | 



@Cenario4
@Automatizar
@ExcluirFotoDevolucao
Esquema do Cenario: Excluir foto na rdevolução 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Devolucao>
E clicar em "Fotos"
E clicar sobre a "Imagem"
Quando clicar na "Lixeira"
E clicar em "CONFIRMAR"
Entao Imagem é excluída
E exibe <MensagemExcluirFotoDevolucao> 

Exemplos:
| Empresa | Devolucao | MensagemMensagemExcluirFotoDevolucao |
| Matriz  | 4860-02   | Imagem excluída com sucesso          |



@Cenario5
@Automatizar
@CancelarExclusaoFotoRemessa 
Esquema do Cenario: Cancelar exclusão de foto na devolução 
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
Esquema do Cenario: Inserir foto na devolução
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
Esquema do Cenario: Excluir foto na devolução 
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
