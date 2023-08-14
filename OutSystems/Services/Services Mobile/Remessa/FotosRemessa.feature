#language: pt
#FotosRemessa
#ServicesMobile


Funcionalidade: Inserir fotos na remessa 
  Como um usuário do Services Mobile 
  Eu quero inserir fotos da atividade realizada na remessa 
  Para ter uma confirmação com imagens


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar
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
E exibe <Mensagem> 

| Empresa | Remessa | Mensagem                   |
| Matriz  | 4860-03 | Imagem Anexada com sucesso |



@Cenario2
@Automatizar
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
E exibe <Mensagem> 

| Empresa | Remessa | Mensagem                   |
| Matriz  | 4860-03 | Imagem Anexada com sucesso |



@Cenario3
@Automatizar
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
E exibe <Mensagem> 

| Empresa | Remessa | Mensagem                    |
| Matriz  | 4860-03 | Imagem excluída com sucesso |


