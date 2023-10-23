#language: pt
#ServicesPatrimonio
#ServicesWeb


Funcionalidade: exibir informações relacionadas ao patrimônio 
  Como um usuário do Services Web
  Eu quero visualizar informações do patrimônio 
  Para facilitar atividades operacionais
 

Dado Esteja logado no Services Web 


@Cenario1
@Manual
@ServicesPatrimonio
Esquema do Cenario: Pesquisar um patrimonio 
E clicar em "Cadastros"
E clicar em "Patrimônio"
E preencher <Pesquisa> 
Quando clicar "Lupa - Pesquisar"
Entao exibe os dados

Exemplos:
| Pesquisa  |
| Betoneira |



@Cenario2
@Manual
@ServicesPatrimonio
Cenario: Atualizar listagem  
E clicar em "Cadastros"
E clicar em "Patrimônio" 
Quando clicar "Atualizar"
Entao atualiza listagem



@Cenario3
@Manual
@ServicesPatrimonio
Cenario: Filtros 
E clicar em "Cadastros"
E clicar em "Patrimônio"
E clciar em "Filtro"
E preencher os dados  
Quando clicar "Filtrar"
Entao exibe os dados filtrados 



@Cenario4
@Manual
@ServicesPatrimonio
Esquema do Cenario: Sincronizar com Sisloc  
E clicar em "Cadastros"
E clicar em "Patrimônio"
Quando clicar "Atualizar/Sincornizar com Sisloc"
E preencher <IdPatrimonio>
E clicar "Ok"
Entao sincroniza com Sisloc 

Exemplos:
| IdPatrimonio |
| 7379         |



@Cenario5
@Manual
@ServicesPatrimonio
Cenario: Visualizar  informações do patrimônio 
E clicar em "Cadastros"
E clicar em "Patrimônio"
Quando clicar "Ações"
Entao exibe dados do patrimônio 



@Cenario6
@Automatizar
@ServicesPatrimonio
Esquema do Cenario: Anexar arquivo ao patrimônio
E clicar em "Cadastros"
E clicar em "Patrimônio"
E clicar <Patrimonio> 
E clicar "Anexos"
Quando clicar "Anexar Arquivos"
E selecionar arquivo 
E clicar "Salvar"
Entao grava anexo no patrimônio 

Exemplos:
| Patrimonio |
| PG-11      |



@Cenario7
@Automatizar
@ServicesPatrimonio
Cenario: Visualizar Código de barras 
E clicar em "Cadastros"
E clicar em "Patrimônio"
E clicar "Editar"
Quando clicar "Código de Barras"
Entao exibe código de barras 



@Cenario8
@Automatizar
@ServicesPatrimonio
Cenario: Visualizar QR Code 
E clicar em "Cadastros"
E clicar em "Patrimônio"
E clicar "Editar"
Quando clicar "Código de Barras"
Entao exibe QR Code 



@Cenario9
@Automatizar
@ServicesPatrimonio
Esquema do Cenario: Excluir anexo 
E clicar em "Cadastros"
E clicar em "Patrimônio"
E clicar <Patrimonio> 
E clicar "Anexos"
Quando clicar "Seta"
E clicar "Excluir"
E clicar "Sim"
Entao exclui arquivo 

Exemplos:
| Patrimonio |
| PG-11      |



@Cenario10
@Automatizar
@ServicesPatrimonio
Esquema do Cenario: Editar anexo 
E clicar em "Cadastros"
E clicar em "Patrimônio"
E clicar <Patrimonio> 
E clicar "Anexos"
E clicar "Seta"
Quando clicar "Editar"
E preencher os dados 
E clicar "Salvar"
Entao grava os dados 
E apresenta <MensagemEdicao>  

Exemplos:
| Patrimonio | MensagemCriacao                   |
| PG-11      | Aquivo(s) editado(s) com sucesso! |



@Cenario11
@Automatizar
@ServicesPatrimonio
Cenario: Impirmir Códigos de Barras  
E clicar em "Cadastros"
E clicar em "Patrimônio"
Quando clicar "Código de Barras"
E selecionar um relatório
E clicar "Imprimir"
Entao gera código de barras 



@Cenario12
@Automatizar
@ServicesPatrimonio
Cenario: Impirmir QR Code  
E clicar em "Cadastros"
E clicar em "Patrimônio"
Quando clicar "QR Code"
E selecionar um relatório
E clicar "Imprimir"
Entao gera código de barras 

