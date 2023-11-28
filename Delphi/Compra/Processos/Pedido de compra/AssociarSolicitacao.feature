#language: pt
#AssociarSolicitacao
#Delphi


Funcionalidade: Associar uma solicitação de compra no pedido de compra
  Como associar uma solicitação de compra no pedido de compra, no qual mostra o sistema insere as mercadorias/serviço
  Eu quero associar uma solicitação de compra
  Para utilizar no processo de cadastro de compra de produto ou serviço


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@AssociarSolicitacao
Esquema do Cenario: Associar solicitação de compra no pedido de compra
E esteja com mapa de cotação gerado
E selecionar "Associar Solicitação"
E inserir <Solicitacao>
Quando clicar em "Ok"
Então grava dados
E inserir <NumerodaSolicitacao>
E gera o <PedidodeCompra>

Exemplos:
| Solicitacao    | NumerodaSolicitacao | PedidodeCompra |
| 013391         | 013391              |                |
| 013564, 013663 | 013564, 013663      |                |



@Cenario2
@Automatizar
@DesassociarSolicitacao
Esquema do Cenario: Desassociar solicitação de compra no pedido de compra
E selecionar "Associar Solicitação"
E selecionar "Todos"
E esteja com <Solicitacao>
E desmarcar <CheckBoxSolicitacao>
Quando clicar em "Ok"
Então limpa o campo "Número Solicitação"

Exemplos:
| Solicitacao    | CheckBoxSolicitacao |
| 013391         | Desmarcar           |
| 013564, 013663 | Desmarcar           |