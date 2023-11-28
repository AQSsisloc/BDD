#language: pt
#Pedidodecompra
#Delphi


Funcionalidade: Cadastrar um pedido de compra
  Como uma rotina para cadastrar um pedido de compras ou importar XML de mercadoria
  Eu quero cadastrar um pedido de compra ou importar o XML
  Para utilizar no processo de cadastro de compra de produto ou serviço


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@PedidodeCompra
Esquema do Cenario: Cadastrar cabeçalho pedido de compra
E que esteja logado com usuário funcionário
E esteja com <Empresa>
E selecionar "Compra"
E selecionar "Pedido de Compra"
E clicar em "+Adicionar"
E inserir <Alcada>
E inserir <Fornecedor>
Quando clicar em "Salvar"
Então grava dados
E gera o <PedidodeCompra>

Exemplos:
| Empresa | Alcada                 | Fornecendor                                 | Pedido de Compra |
| Matriz  | Compra Produto/Serviço | 24 - AUTO NORTE DISTRIBUIDORA DE PECAS LTDA | 018568           |



@Cenario2
@Automatizar
@Mercadoria
Cenario: Cadastrar um pedido de compras com mercadoria
E clicar em aba "4 - Produtos"
Quando clicar em "+Adicionar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados



@Cenario3
@Automatizar
@Serviço
Cenario: Cadastrar um pedido de compras com serviço
E clicar em aba "5 - Serviços"
Quando clicar em "+Adicionar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados



@Cenario4
@Automatizar
@NF/Impostos/Retenções
Cenario: Cadastrar um pedido de compras com impostos e retenções
E clicar em aba "2 - NF/Impostos/Retenções"
E preencher os campos disponíveis
Quando clicar em "Salvar"
Entao grava os dados



@Cenario5
@Automatizar
@CamposAdicionais
Cenario: Cadastrar um pedido de compras com campos adicionais
E clicar em aba "3 - Campos adicionais"
E preencher os campos disponíveis
Quando clicar em "Salvar"
Entao grava os dados



@Cenario6
@Automatizar
@Parcelas
Cenario: Cadastrar um pedido de compras com campos adicionais
E clicar em aba "3 - Campos adicionais"
E preencher os campos disponíveis
E selecionar "Número dias"
E selecionar "Valor Parcelas"
Quando clicar em "Salvar"
Entao grava os dados