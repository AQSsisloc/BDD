#language: pt
#GerarCAPprovisorio
#Delphi


Funcionalidade: Gerar CAP provisório no compra no pedido de compra
  Como gerar CAP provisório no compra no pedido de compra
  Eu quero gerar CAP provisório no compra no pedido de compra
  Para gerar CAP provisório no compra no pedido de compra


Dado acessar o sistema Sisloc com usuário


@Cenario1
@Automatizar
@GerarCAPProvisorio
Esquema do Cenario: Não cadastrar uma parcela na aba "6 - parcelas" no pedido de compras
E que esteja logado com usuário funcionário
E selecionar "Gerar CAP Provisório"
E apresenta a <MensagemDeSucesso>

Exemplos:
| Nome      | Pessoa      | MensagemDeSucesso                                                                    |
| Teste AQS | Teste AQS 1 | Conta a pagar não será gerada porque as parcelas de pagamento não foram cadastradas. |



@Cenario2
@Automatizar
@GerarCAPProvisorio
Esquema do Cenario: Cadastrar uma parcela na aba "6 - parcelas" no pedido de compras
E que esteja logado com usuário funcionário
E selecionar "Gerar CAP Provisório"
Quando clicar em "Gerar CAP Provisório"
E inserir "Natureza Financeira"
E inserir "Centro de resultado"
E clicar em "Ok"
Entao grava os dados