#language: pt
#MovimentacaoInterna
#ServicesMobile


Funcionalidade: Gerenciar movimentação interna do estoque de equipamentos 
  Como um usuário do Services Mobile 
  Eu quero gerenciar a movimentação interna de equipamentos de acordo com as requisições 
  Para ter controle sobre o estoque dos equipamentos


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar 
@MovimentacaoInterna
Esquema do Cenario: Pesquisar requisições de peças
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "MovInterna"
E clicar em "Pesquisar"
Quando clicar em <Almoxarifado> 
E clicar em "Informações"
Entao deve exibir detalhes da requisição de peças 

Exemplos:
| Empresa | Almoxarifado   |
| Matiz   | ESTOQUE VENDAs |



@Cenario2
@Automatizar 
@MovimentacaoInterna
Esquema do Cenario: Abrir tela de movimentação de peças 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "MovInterna"
E clicar em "Pesquisar"
E clicar em <Almoxarifado> 
E clicar em <Requisicao>
Quando clicar em "Efetuar Movimentação"
Entao apresenta tela com equipamentos 

Exemplos:
| Empresa | Almoxarifado   | Requisicao                    |
| Matiz   | ESTOQUE VENDAs | RI237995 - Requisição interna |



@Cenario3
@Automatizar 
@MovimentacaoInterna
Esquema do Cenario: Autorizar movimentação de estoque 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "MovInterna"
E clicar em "Pesquisar"
E clicar em <Almoxarifado> 
E clicar em <Requisicao>
Quando clicar em "Autorizar"
E clicar em "Confirmar"
Entao apresenta tela para efetuar movimentação 
E apresenta <MensagemRetornoMovimentacao> 

Exemplos:
| Empresa | Almoxarifado   | Requisicao                    | MensagemRetornoMovimentacao       |
| Matiz   | ESTOQUE VENDAs | RI230857 - Requisição interna | Movimentacao iniciada com sucesso |



@Cenario4
@Manual
@MovimentacaoInterna
Esquema do Cenario: Gravar movimentação de peças na requisição 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "MovInterna"
E clicar em "Pesquisar"
E clicar em <Almoxarifado> 
E clicar em <Requisicao>
E clicar em "Efetuar Movimentação"
Quando clicar em "Gravar"
E "Prosseguir"
Entao grava a movimentação   

Exemplos:
| Empresa | Almoxarifado   | Requisicao                    | 
| Matiz   | ESTOQUE VENDAs | RI237995 - Requisição interna | 



@Cenario5
@Manual 
@MovimentacaoInterna
Esquema do Cenario: Gravar quantidade "Entrada" na movimentação de peças na requisição 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "MovInterna"
E clicar em "Pesquisar"
E clicar em <Almoxarifado> 
E clicar em <Requisicao>
E clicar em "Efetuar Movimentação"
Quando clicar em "Entrada"
E inserir a quantidade 
E clicar em "Gravar"
Entao grava quantidade solicitada  

Exemplos:
| Empresa | Almoxarifado   | Requisicao                    |
| Matiz   | ESTOQUE VENDAs | RI237995 - Requisição interna |



@Cenario6
@Automatizar 
@MovimentacaoInterna
Esquema do Cenario: Cancelar movimentação de peças na requisição 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "MovInterna"
E clicar em "Pesquisar"
E clicar em <Almoxarifado> 
E clicar em <Requisicao>
E clicar em "Efetuar Movimentação"
Quando clicar em "Cancelar"
E clicar "Sim"
Entao cancela movimentação 
E retorna para a tela anterior   

Exemplos:
| Empresa | Almoxarifado   | Requisicao                    |
| Matiz   | ESTOQUE VENDAs | RI237995 - Requisição interna |



@Cenario7
@Manual 
@MovimentacaoInterna
Esquema do Cenario: Visualizar comprovante gerado após conclusão de movimentação 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "MovInterna"
E clicar em "Pesquisar"
E clicar em <Almoxarifado> 
E clicar em <Requisicao>
E clicar em "Efetuar Movimentação"
Quando clicar em "Gravar"
E clicar em "Visualizar"
Entao abre navegador para baixar o comprovante
E salva o comprovante no dispositivo

Exemplos:
| Empresa | Almoxarifado  | Requisicao                        |
| Matiz   | ESTOQUE VENDA | OM000018050 - Ordem de Manutenção |



@Cenario8
@Manual 
@MovimentacaoInterna
Esquema do Cenario: Visualizar comprovante gerado através da aba 3-movimentação 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "MovInterna"
E clicar em "Pesquisar"
E clicar em <Almoxarifado> 
E clicar em <Requisicao>
E <Requisicao2> esteja concluida
Quando clicar em "3-movimentação"
E clicar em "Arquivo" da <Movimentacao>
Entao abre navegador para baixar o comprovante
E salva o comprovante no dispositivo

Exemplos:
| Empresa | Almoxarifado  | Requisicao               | Movimentacao |
| Matiz   | ESTOQUE VENDA | OM000018050 - Manutenção | 157810       |



@Cenario9
@Manual 
@MovimentacaoInterna
Esquema do Cenario: Visualizar comprovante gerado através da aba "Concluídos" 
E esteja logado com usuário funcionário
E esteja com a <Empresa>
E clicar em "MovInterna"
E clicar em "Concluído"
Quando clicar na  <Requisicao>
E clicar em "Comprovante"
Entao abre navegador para baixar o comprovante
E salva o comprovante no dispositivo

Exemplos:
| Empresa | Requisicao               |
| Matiz   | OM000018050 - Manutenção |



@Cenario10
@Automatizar
@MovimentacaoInterna
Esquema do Cenario: Estornar movimentação concluída  
E esteja logado com usuário funcionário
E esteja com a <Empresa>
E clicar em "MovInterna"
E clicar em "Concluído"
E clicar na  <Requisicao>
Quando clicar em "Estornar Movimentação"
E clicar em "Confirmar"
Entao requisição é retornada para "Autorizada" 
E apresenta <MensagemRetornoEstorno>

Exemplos:
| Empresa | Requisicao               | MensagemRetornoEstorno |
| Matiz   | OM000018050 - Manutenção | Estornado com sucesso  |



@Cenario11
@Automatizar
@MovimentacaoInterna
Esquema do Cenario: Estornar movimentação autorizada   
E esteja logado com usuário funcionário
E esteja com a <Empresa>
E clicar em "MovInterna"
E clicar em "Autorizados"
E clicar na  <Requisicao>
Quando clicar em "Estornar Autorização"
E clicar em "Confirmar"
Entao requisição é retornada para "Não Autorizado" 
E apresenta <MensagemRetornoEstornoAut>

Exemplos:
| Empresa | Requisicao               | MensagemRetornoEstornoAut |
| Matiz   | OM000018050 - Manutenção | Estornado com sucesso     |



@Cenario12
@Manual
@MovimentacaoInterna
Esquema do Cenario: Gravar quantidade maior do pedido    
E esteja logado com usuário funcionário
E esteja com a <Empresa>
E clicar em "MovInterna"
E clicar em "Autorizados"
E clicar na  <Requisicao>
E clicar em "Efetuar Movimentação"
E digitar "Entrada" maior que "Pedido"
Quando clicar em "Gravar"
E clicar "Confirmar" na validação de quantidade diferente
Entao apresenta <MensagemImpedimento>

Exemplos:
| Empresa | Requisicao               | MensagemRetornoDiferenca |
| Matiz   | OM000018050 - Manutenção | Mensagem retornada pelo  |



@Cenario13
@Automatizar
@MovimentacaoInterna
Esquema do Cenario: Voltar ao topo    
E esteja logado com usuário funcionário
E esteja com a <Empresa>
E clicar em "MovInterna"
E clicar em "Autorizados"
E clicar na  <Requisicao>
E clicar em "Efetuar Movimentação"
Quando clicar em "+"
E clicar em "Voltar ao topo"
Entao listagem de equipamentos retorna ao topo

Exemplos:
| Empresa | Requisicao               | 
| Matiz   | OM000018050 - Manutenção | 



@Cenario14
@Manual
@MovimentacaoInterna
Esquema do Cenario: Ler código de barras
E esteja logado com usuário funcionário
E esteja com a <Empresa>
E clicar em "MovInterna"
E clicar em "Autorizados"
E clicar na  <Requisicao>
E clicar em "Efetuar Movimentação"
Quando clicar em "+"
E clicar em "Ler código de barras"
Entao apresenta leitura de código de barras 

Exemplos:
| Empresa | Requisicao               | 
| Matiz   | OM000018050 - Manutenção | 



@Cenario15
@Automatizar
@MovimentacaoInterna
Esquema do Cenario: Marcar produto conferido 
E esteja logado com usuário funcionário
E esteja com a <Empresa>
E clicar em "MovInterna"
E clicar em "Autorizados"
E clicar na  <Requisicao>
E clicar em "Efetuar Movimentação"
E clicar "V" no <EquipamentoConferido> conferido
Quando clicar em "Gravar"
E clicar em "Prosseguir"
Entao grava requisição como efetuada
E gera comprovante na aba "3-Movimentação"

Exemplos:
| Empresa | Requisicao | EquipamentoConferido |
| Matiz   | RI230895   | Alça Transporte      |



@Cenario16
@Automatizar
@MovimentacaoInterna
Esquema do Cenario: Marcar produto não conferido
E esteja logado com usuário funcionário
E esteja com a <Empresa>
E clicar em "MovInterna"
E clicar em "Autorizados"
E clicar na  <Requisicao>
E clicar em "Efetuar Movimentação"
E clicar "X" no <EquipamentoNaoConferido> não conferido
Quando clicar em "Gravar"
E clicar em "Prosseguir"
Entao grava requisição como pendente

Exemplos:
| Empresa | Requisicao | EquipamentoNaoConferido     |
| Matiz   | RI230895   | Parafuso do Carter do Motor |