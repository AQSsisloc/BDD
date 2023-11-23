#language: pt
#ServicosOM
#ServicesMobile


Funcionalidade: Adicionar um serviço na Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero adicionar serviço na Ordem de Manutenção
  Para informar serviços a serem realizados


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@AdicionarServicoOM
Esquema do Cenario: Adicionar serviço na criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar a aba "Serviços"
E selecionar "Adicionar Serviço"
E inserir <Buscar>
E clicar na peça escolhida
E inserir <InformarQuantidade>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | Buscar                            | InformarQuantidade | MensagemDeSucesso                                   |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | SERVIÇO DE MONTAGEM E DESMONTAGEM | 1                  | Serviço SERVIÇO DE MONTAGEM E DESMONTAGEM inserido! |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | RETIFICA CABEÇOTE                 | 2                  | Serviço RETIFICA CABEÇOTE inserido!                 |



@Cenario2
@Manual
@AdicionarServicoOM
Esquema do Cenario: Adicionar serviço na criação da Ordem de Manutenção informando a quantidade 0
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar a aba "Serviços"
E selecionar "Adicionar Serviço"
E inserir <Buscar>
E clicar na peça escolhida
E inserir <InformarQuantidade>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | Buscar                            | InformarQuantidade | MensagemDeRetorno                   |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | SERVIÇO DE MONTAGEM E DESMONTAGEM | 0                  | Coloque uma quantidade maior que 0! |



@Cenario3
@Manual
@AdicionarServicoOM
Esquema do Cenario: Adicionar serviço na criação da Ordem de Manutenção sem inserir dados
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar a aba "Serviços"
E selecionar "Adicionar Serviço"
E clicar na tela da OM cadastrada
Entao não grava os dados

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | 



@Cenario4
@Manual
@AdicionarServicoOM
Esquema do Cenario: Adicionar serviço na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Serviços"
E selecionar "Adicionar Serviço"
E inserir <Buscar>
E clicar na peça escolhida
E inserir <InformarQuantidade>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Buscar                            | InformarQuantidade | MensagemDeSucesso                                   |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | SERVIÇO DE MONTAGEM E DESMONTAGEM | 1                  | Serviço SERVIÇO DE MONTAGEM E DESMONTAGEM inserido! |



@Cenario5
@Manual
@ExecutarServicoOM
Esquema do Cenario: Executar serviço criado na Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Serviços"
E selecionar <Servico>
E clicar em "Executar"
Entao executa o serviço criado

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Servico                            |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | SERVIÇO DE MONTAGEM E DESMONTAGEM  |



@Cenario6
@Manual
@PausarServicoOM
Esquema do Cenario: Pausar serviço em execução na Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Serviços"
E selecionar <Servico>
E clicar em "Pausar"
Entao pausa o serviço criado

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Servico                            |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | SERVIÇO DE MONTAGEM E DESMONTAGEM  |



@Cenario7
@Manual
@PararServicoOM
Esquema do Cenario: Parar serviço em execução na Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Serviços"
E selecionar <Servico>
E clicar em "Stop"
E inserir <Quantidade>
E inserir <Horas>
Entao para o serviço criado

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Servico                           | Quantidade | Horas |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | SERVIÇO DE MONTAGEM E DESMONTAGEM | 1          | 03:42 |



@Cenario8
@Manual
@ApontarServicoOM
Esquema do Cenario: Apontar serviço na Ordem de Manutenção com horas trabalhadas "Intervalo por Técnico"
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Serviços"
E selecionar <Servico>
E clicar em "Apontar"
E inserir <Quantidade>
E clicar em "+"
E inserir <DataInicio>
E inserir <DataTermino>
E clicar em "Confirmar"
Entao aponta o serviço criado
E grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Servico                           | Quantidade | DataInicio       | DataTermino      |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | SERVIÇO DE MONTAGEM E DESMONTAGEM | 2          | 16/05/2023,10:59 | 16/05/2023,16:35 |



@Cenario9
@Manual
@ApontarServicoOM
Esquema do Cenario: Apontar serviço na Ordem de Manutenção com horas trabalhadas "Horas por OM"
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Serviços"
E selecionar <Servico>
E clicar em "Apontar"
E inserir <Quantidade>
E clicar em "+"
E inserir <Horas>
E clicar em "Confirmar"
Entao aponta o serviço criado
E grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Servico                           | Quantidade | Horas |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | SERVIÇO DE MONTAGEM E DESMONTAGEM | 2          | 00:00 |



@Cenario10
@Manual
@ApontarServicoOM
Esquema do Cenario: Apontar serviço na Ordem de Manutenção com horas trabalhadas "Horas por Técnico"
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Serviços"
E selecionar <Servico>
E clicar em "Apontar"
E inserir <Quantidade>
E clicar em "+"
E inserir <Horas>
E clicar em "Confirmar"
Entao aponta o serviço criado
E grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Servico                           | Quantidade | Horas |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | SERVIÇO DE MONTAGEM E DESMONTAGEM | 2          | 00:00 |



@Cenario11
@Manual
@ExcluirServicoOM
Esquema do Cenario: Excluir serviço na Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Serviços"
E selecionar <Servico>
E clicar em "Apontar"
E clicar em "Excluir Serviço"
E clicar em "Confirmar"
Entao exclui o serviço criado
E apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Servico                           | MensagemDeRetorno                                   |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | SERVIÇO DE MONTAGEM E DESMONTAGEM | Serviço SERVIÇO DE MONTAGEM E DESMONTAGEM excluído! |



@Cenario12
@Manual
@CancelarApontarServicoOM
Esquema do Cenario: Cancelar apontamento de serviço na Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Serviços"
E selecionar <Servico>
E clicar em "Apontar"
E clicar em "Cancelar"
Entao cancela o apontamento de serviço criado

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Servico                           |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | SERVIÇO DE MONTAGEM E DESMONTAGEM |



@Cenario13
@Manual
@AdicionarServicoOM
Esquema do Cenario: Adicionar serviço na criação da Ordem de Manutenção no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar <Modo>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar a aba "Serviços"
E selecionar "Adicionar Serviço"
E inserir <Buscar>
E clicar na peça escolhida
E inserir <InformarQuantidade>
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | Modo    | Buscar                            | InformarQuantidade | MensagemDeSucesso                                   |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Offline | SERVIÇO DE MONTAGEM E DESMONTAGEM | 1                  | Serviço SERVIÇO DE MONTAGEM E DESMONTAGEM inserido! |


