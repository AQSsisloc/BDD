#language: pt
#Exportar Mapa de Cotação para o Excel
#Delphi


Funcionalidade: Exportar Mapa de Cotação para o Excel.
  Como exportar o mapa de cotação para o Excel
  Eu quero exportar o mapa de cotação para o Excel 
  Para exportar o mapa de cotação com as informações das cotações dos fornecedores


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@exportarMapadeCotacaoParaoExcel
Cenario: Imprimir cotação dos fornecedores no mapa de cotação
E clicar em <ExportarMapadeCotacaoParaoExcel>
E informar caminho para salvar o arquivo
E apresenta a <MensagemDeSucesso>
Então exibe o mapa de cotação em Excel


Exemplos:
| MensagemDeSucesso                   |
| Deseja visualizar o arquivo gerado? |