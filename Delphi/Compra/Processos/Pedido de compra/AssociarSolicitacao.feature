#language: pt
#Associar Solicitação Pedido de Compra
#FDelphi


Funcionalidade: Associar uma solicitação de compra no pedido de compra
  Como associar uma solicitação de compra no pedido de compra, no qual mostra o sistema insere as mercadorias/serviço
  Eu quero associar uma solicitação de compra
  Para utilizar no processo de cadastro de compra de produto ou serviço


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@AssociarSolicitação
Esquema do Cenario: Associar solicitação de compra no pedido de compra
E selecionar "Associar Solicitação"
E inserir <Solicitacao>
Quando clicar em "Ok"
Então grava dados
E inserir <NumerodaSolicitacao>
E gera o <PedidodeCompra>

Exemplos:
| Solicitacao    | NumerodaSolicitacao |
| 013391         | 013391              |
| 013564, 013663 | 013564, 013663      |



@Cenarios
@Automatizar
@DesassociarSolicitação
Esquema do Cenario: Desassociar solicitação de compra no pedido de compra
E selecionar "Associar Solicitação"
E selecionar "Todos"
E desmarcar <Solicitacao>
Quando clicar em "Ok"
Então limpa o campo "Número Solicitação"

Exemplos:
| Solicitacao    | Solicacao |
| 013391         | Desmarcar |
| 013564, 013663 | Desmarcar |