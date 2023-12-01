#language: pt
#Abrir anotações
#Delphi


Funcionalidade: Abrir anotações do mapa de cotação.
  Como abrir as anotações do mapa de cotação
  Eu quero inserir e visualizar anotações do mapa de cotação
  Para fazer anotações referente ao mapa de cotação


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@AbrirAnotacoes
Cenario: Abrir anotações do mapa de cotação
E clicar em <AbriAnotacoes>
E clicar em "+Adicionar"
E informar "Status"
E inserir "Assunto"
E salvar
Então grava os dados