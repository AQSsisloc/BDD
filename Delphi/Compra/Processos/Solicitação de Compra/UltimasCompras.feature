#language: pt
#Últimas Compras
#Delphi


Funcionalidade: Emitir relatório no qual mostra as últimas compras do produto selecionado.
  Como exibir as últimas compras do produto selecionado na solicitação de compras
  Eu quero verificar as últimas compras do produto selecionado na solicitação de compras
  Para exibir o relatório do produto selecionado na solicitação de compras


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@UltimasCompras
Cenario: Listar as últimas compras do produto selecionado
Quando clicar em <UltimasCompras>
E gera o <Relatorio>