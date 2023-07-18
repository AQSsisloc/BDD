#language: pt
#InfoOM
#ServicesMobile


Funcionalidade: Adicionar informações na Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero adicionar informações na Ordem de Manutenção
  Para salvar informações importantes


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@AdicionarInfoOM
Esquema do Cenario: Adicionar informações na criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar a aba "Info"
E inserir <Descricao>
E inserir <Problema>
E inserir <Observacao>
Entao grava os dados

Exemplos:
| Empresa    | Almoxarifado         | Descricao             | Problema                | Observacao                                                   |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Equipamento retornado | Equipamento com defeito | Voltará para Obra, equipamento será testado em nossa oficina |



@Cenario2
@Manual
@AdicionarInfoOM
Esquema do Cenario: Adicionar informações na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Info"
E inserir <Descricao>
E inserir <Problema>
E inserir <Observacao>
Entao grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao     | Descricao             | Problema                | Observacao                                                   |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Mangote Vibrador 63mm | Equipamento retornado | Equipamento com defeito | Voltará para Obra, equipamento será testado em nossa oficina |



@Cenario3
@Manual
@AdicionarInfoOM
Esquema do Cenario: Adicionar informações por voz na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Info"
E inserir <Descricao>
E inserir <Problema>
E inserir <Observacao>
Entao grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao     | Descricao             | Problema                | Observacao                                                   |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Mangote Vibrador 63mm | Equipamento retornado | Equipamento com defeito | Voltará para Obra, equipamento será testado em nossa oficina |


@Cenario4
@Automatizar
@CancelarInfoOM
Esquema do Cenario: Cancelar informações inseridas na Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar a aba "Info"
E clicar em "Cancelar" no campo "Descrição"
E clicar em "Cancelar" no campo "Problema"
E clicar em "Cancelar" no campo "Observação"
Entao grava os dados

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |



@Cenario5
@Manual
@AdicionarInfoOM
Esquema do Cenario: Adicionar informações na criação da Ordem de Manutenção no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar <Modo>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar a aba "Info"
E inserir <Descricao>
E inserir <Problema>
E inserir <Observacao>
Entao grava os dados

Exemplos:
| Empresa    | Almoxarifado         | Modo    | Descricao             | Problema                | Observacao                                                   |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Offline | Equipamento retornado | Equipamento com defeito | Voltará para Obra, equipamento será testado em nossa oficina |


