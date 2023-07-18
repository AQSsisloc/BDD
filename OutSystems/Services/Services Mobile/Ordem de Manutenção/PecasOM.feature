#language: pt
#PecasOM
#ServicesMobile


Funcionalidade: Adicionar uma peça na Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero adicionar peça na Ordem de Manutenção
  Para informar defeito e inserir no serviços


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@AdicionarPecaOM
Esquema do Cenario: Adicionar peça na criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar a aba "Peças"
E selecionar "Adicionar Peça"
E inserir <Buscar>
E clicar na peça escolhida
E selecionar <Defeito>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | Buscar                | Defeito | MensagemDeSucesso                  |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 6205 - Rolamento 6205 | Mau uso | 6205 - Rolamento 6205 adicionados! |



@Cenario2
@Automatizar
@AdicionarPecaOM
Esquema do Cenario: Adicionar peça na criação da Ordem de Manutenção sem peça cadastrada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar a aba "Peças"
E selecionar "Adicionar Peça"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa  | Almoxarifado        | MensagemDeRetorno                                |
| IPATINGA | 422 Joãozinho Almox | Nenhum resultado para os parâmetros pesquisados! |



@Cenario3
@Automatizar
@AdicionarPecaOM
Esquema do Cenario: Adicionar peça na criação da Ordem de Manutenção sem confirmação
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar a aba "Peças"
E selecionar "Adicionar Peça"
E inserir <Buscar>
E clicar na peça escolhida
E selecionar <Defeito>
E clicar em "Cancelar"
E clicar na tela da OM cadastrada
Entao não grava os dados

Exemplos:
| Empresa    | Almoxarifado         | Buscar                | Defeito |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 6205 - Rolamento 6205 | Mau uso |



@Cenario4
@Manual
@AdicionarPecaOM
Esquema do Cenario: Adicionar peça na criação de uma OM
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Peças"
E selecionar "Adicionar Peça"
E inserir <Buscar>
E clicar na peça escolhida
E selecionar <Defeito>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao     | Buscar                | Defeito | MensagemDeSucesso                  |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Mangote Vibrador 63mm | 6205 - Rolamento 6205 | Mau uso | 6205 - Rolamento 6205 adicionados! |



@Cenario5
@Manual
@RequisitarPecaOM
Esquema do Cenario: Requisitar peça de uma OM
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Peças"
E clicar em <Peca>
E selecionar "Requisitar"
E inserir <Quantidade>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa | Almoxarifado          | OrdemDeManutencao              | Peca                              | Quantidade | MensagemDeRetorno                  |
| MATRIZ  | 1.10 - ESTOQUE VENDAs | Motor Vibrador Honda GX-160 QX | 98079-5585C - Vela Ignição GX-440 | 1          | 1 Vela Ignição GX-440 requisitada! |



@Cenario6
@Manual
@DevolverPecaOM
Esquema do Cenario: Devolver peça requisitada de uma OM 
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Peças"
E clicar em <Peca>
E selecionar "Devolver"
E inserir <Quantidade>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa | Almoxarifado          | OrdemDeManutencao              | Peca                              | Quantidade | MensagemDeRetorno                 |
| MATRIZ  | 1.10 - ESTOQUE VENDAs | Motor Vibrador Honda GX-160 QX | 98079-5585C - Vela Ignição GX-440 | 1          | 1 Vela Ignição GX-440 devolvivda! |



@Cenario7
@Automatizar
@CancelarRequisicaoPecaOM
Esquema do Cenario: Cancelar requisição de peça de uma OM
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Peças"
E clicar em <Peca>
E selecionar "Requisitar"
E inserir <Quantidade>
E clicar em "Confirmar"
Entao não grava os dados

Exemplos:
| Empresa | Almoxarifado          | OrdemDeManutencao              | Peca                              | Quantidade |
| MATRIZ  | 1.10 - ESTOQUE VENDAs | Motor Vibrador Honda GX-160 QX | 98079-5585C - Vela Ignição GX-440 | 1          |



@Cenario8
@Automatizar
@CancelarDevolucaoPecaOM
Esquema do Cenario: Cancelar devolução de peça requisitada de uma OM 
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Peças"
E clicar em <Peca>
E selecionar "Devolver"
E inserir <Quantidade>
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Empresa | Almoxarifado          | OrdemDeManutencao              | Peca                              | Quantidade |
| MATRIZ  | 1.10 - ESTOQUE VENDAs | Motor Vibrador Honda GX-160 QX | 98079-5585C - Vela Ignição GX-440 | 1          |



@Cenario9
@Manual
@AdicionarPecaOM
Esquema do Cenario: Adicionar peça na criação da Ordem de Manutenção no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar <Modo>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar a aba "Peças"
E selecionar "Adicionar Peça"
E inserir <Buscar>
E clicar na peça escolhida
E selecionar <Defeito>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | Modo    | Buscar                | Defeito | MensagemDeSucesso                  |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Offline | 6205 - Rolamento 6205 | Mau uso | 6205 - Rolamento 6205 adicionados! |


