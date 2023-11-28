#language: pt
#LiberarValorTetoPedidodeCompra
#Delphi


Funcionalidade: Liberar valor teto de compra no pedido de compra
  Como liberar o valor teto do pedido de compra
  Eu quero liberar o valor teto do pedido de compra
  Para liberar o valor teto de cadastro de compra de produto ou serviço


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@LiberarValorTeto
Esquema do Cenario: Liberar valor teto no pedido de compra
Quando selecionar "Liberar Valor Teto"
Então grava dados
E inserir <DataLiberacaoValorTeto>
E inserir <UsuarioLiberacao>
E grava o <PedidodeCompra>

Exemplos:
| DataLiberacaoValorTeto | UsuarioLiberacao  | PedidodeCompra |
| 25/09/2023 10:59       | 12 - CARLOS ANDRÉ |                |



@Cenario1
@Automatizar
@EstonarLiber.ValorTeto
Esquema do Cenario: Estoanra a liberação valor teto no pedido de compra
E selecionar "Estornar Liber. Valor Teto"
Então grava dados
E limpar <DataLiberacaoValorTeto>
E limpar <UsuarioLiberacao>
E grava o <PedidodeCompra>

Exemplos:
| DataLiberacaoValorTeto | UsuarioLiberacao | PedidodeCompra |
|                        |                  |                |