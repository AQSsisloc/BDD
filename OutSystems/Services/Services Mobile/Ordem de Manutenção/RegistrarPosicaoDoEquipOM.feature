#language: pt
#RegistrarPosicaoDoEquipOM
#ServicesMobile


Funcionalidade: Registrar posição do Equipamento na Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero informar a posição do equipamento na Ordem de Manutenção
  Para salvar a localização geográfica do equipamento no atendimento


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@RegistrarPosicaoDoEquipOM
Esquema do Cenario: Registrar posição do equipamento na criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E clicar em "Mais"
Quando selecionar "Registrar Posição do Equipamento"
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | MensagemDeSucesso                                    |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | A posição do equipamento foi registrada com sucesso! |



@Cenario2
@Automatizar
@RegistrarPosicaoDoEquipOM
Esquema do Cenario: Adicionar pendência na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Registrar Posição do Equipamento"
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | MensagemDeSucesso                                    |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | A posição do equipamento foi registrada com sucesso! |



@Cenario3
@Automatizar
@RegistrarPosicaoDoEquipOM
Esquema do Cenario: Cancelar a adição da pendência na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Registrar Posição do Equipamento"
E clicar em "Fechar"
Entao não grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX |



@Cenario4
@Manual
@RegistrarPosicaoDoEquipOM
Esquema do Cenario: Registrar posição do equipamento na criação da Ordem de Manutenção no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar <Modo>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E clicar em "Mais"
E selecionar "Registrar Posição do Equipamento"
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | Modo    | MensagemDeSucesso                                    |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Offline | A posição do equipamento foi registrada com sucesso! |


