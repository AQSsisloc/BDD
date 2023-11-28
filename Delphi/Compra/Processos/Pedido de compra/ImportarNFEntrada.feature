#language: pt
#ImportarNFEntrada
#Delphi


//Importação de NF de Entrada não está completa com todos os cenários. Há cenário que necessita de Certificado digital.


Funcionalidade: importar NF de entrada de compra no pedido de compra através do XML
  Como importar a NF de entrada de compra do pedido de compra através do XML
  Eu quero imporat NF de entrada no pedido de compra através do XML
  Para importar NF de entrada de compra de produto através do XML


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@ImportarNFEntrada
Cenario: Importar NF de entrada no pedido de compras pelo XML pela tela do pedido de compra
E selecionar "Importar NF Entrada"
E selecionar "Certificado digital não encontrado"
Quando confirmar "Ok"
E selecionar "Informar XML"
E selecionar "Nome do arquivo"
E confirmar "Cancelar"
Então não grava os dados



@Cenario2
@Automatizar
@ImportarNFEntrada
Cenario: Importar NF de entrada no pedido de compras pelo XML pela tela do pedido de compra
E selecionar "Importar NF Entrada"
E selecionar "Certificado digital não encontrado"
E confirmar "Ok"
E selecionar "Informar XML"
E selecionar "Nome do arquivo"
Quando selecionar "Camminho"
Então grava os dados
E preencher os campos disponíveis
E conformar "Ok"
Então grava os dados



@Cenario3
@Automatizar
@ImportarNFEntrada
Cenario: Importar NF de entrada no pedido de compras pelo XML pela tela do pedido de compra
E selecionar "Pedido de compra"
E selecinar "Compra"
E selecionar "Importar NF Entrada"
E selecionar "Certificado digital não encontrado"
Quando confirmar "Ok"
E selecionar "Informar XML"
E selecionar "Nome do arquivo"
E confirmar "Cancelar"
Então não grava os dados



@Cenario4
@Automatizar
@ImportarNFEntrada
Cenario: Importar NF de entrada no pedido de compras pelo XML pela tela do pedido de compra
E selecionar "Pedido de compra"
E selecinar "Compra"
E selecionar "Importar NF Entrada"
E selecionar "Certificado digital não encontrado"
E confirmar "Ok"
E selecionar "Informar XML"
E selecionar "Nome do arquivo"
Quando selecionar "Camminho"
Então grava os dados
E preencher os campos disponíveis
E conformar "Ok"
Então grava os dados