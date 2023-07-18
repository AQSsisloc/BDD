#language: pt
#InformarPendenciaOM
#ServicesMobile

Funcionalidade: Enviar e-mail com informações da Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero enviar e-mail com relatório da Ordem de Manutenção
  Para enviar relatório com um modelo cadastrado

Dado esteja logado no Services Mobile


@Cenario1
@Manual
@EnviarEmailOM
Esquema do Cenario: Enviar e-mail de relatório na criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E clicar em "Mais"
Quando selecionar "Enviar E-mail"
E clicar em "Modelo"
E inserir <Modelo>
E clicar em "Selecionar"
E inserir <Email>
E inserir <CopiaEmail>
E inserir <Assunto>
E inserir <MensagemEmail>
E clicar em "Enviar"
Entao envia o email para os destinatários
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | Modelo     | Email                       | CopiaEmail                | Assunto            | MensagemEmail                                                                                | MensagemDeSucesso                            |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Modelo OM2 | renan.caetano@sisloc.com.br | omar.junior@sisloc.com.br | BHLOCADORA-OM-2128 | SEGUE ORDEM DE MANUTENÇÃO 2128, REFERENTE AO EQUIPAMENTO Bomba de Mangote CR 2" Weber / 727. | Modelo de OM enviada por e-mail com sucesso! |



@Cenario2
@Manual
@EnviarEmailOM
Esquema do Cenario: Enviar e-mail de relatório na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Enviar E-mail"
E clicar em "Modelo"
E inserir <Modelo>
E clicar em "Selecionar"
E inserir <Email>
E inserir <Assunto>
E inserir <MensagemEmail>
E clicar em "Enviar"
Entao envia o email para os destinatários
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Modelo     | Email                       | Assunto            | MensagemEmail                                                                                | MensagemDeSucesso                            |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | Modelo OM2 | renan.caetano@sisloc.com.br | BHLOCADORA-OM-2128 | SEGUE ORDEM DE MANUTENÇÃO 2128, REFERENTE AO EQUIPAMENTO Bomba de Mangote CR 2" Weber / 727. | Modelo de OM enviada por e-mail com sucesso! |



@Cenario3
@Manual
@EnviarEmailOM
Esquema do Cenario: Enviar e-mail de relatório com controle de Assinatura na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Enviar E-mail"
E clicar em "Modelo"
E inserir <Modelo>
E clicar em "Selecionar"
E inserir <Email>
E inserir <CopiaEmail>
E inserir <Assunto>
E inserir <MensagemEmail>
E selecionar "Controlar Assinatura do Documento"
E clicar em "Enviar"
Entao envia o email para os destinatários
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Modelo     | Email                       | CopiaEmail                | Assunto            | MensagemEmail                                                                                | MensagemDeSucesso                            |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | Modelo OM2 | renan.caetano@sisloc.com.br | omar.junior@sisloc.com.br | BHLOCADORA-OM-2128 | SEGUE ORDEM DE MANUTENÇÃO 2128, REFERENTE AO EQUIPAMENTO Bomba de Mangote CR 2" Weber / 727. | Modelo de OM enviada por e-mail com sucesso! |



@Cenario4
@Automatizar
@EnviarEmailOM
Esquema do Cenario: Enviar e-mail de relatório sem informar dados na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Enviar E-mail"
E inserir <Assunto>
E inserir <MensagemEmail>
E clicar em "Enviar"
Entao não envia o email para os destinatários
E apresenta a <MensagemDeRetorno1>
E apresenta a <MensagemDeRetorno2>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Assunto            | MensagemEmail                                                                                | MensagemDeRetorno1  | MensagemDeRetorno2  |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | BHLOCADORA-OM-2128 | SEGUE ORDEM DE MANUTENÇÃO 2128, REFERENTE AO EQUIPAMENTO Bomba de Mangote CR 2" Weber / 727. | Modelo obrigatório! | E-mail obrigatório! |                                  



@Cenario5
@Automatizar
@EnviarEmailOM
Esquema do Cenario: Cancelar o envio do e-mail de relatório na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Enviar E-mail"
E clicar em "Modelo"
E inserir <Modelo>
E clicar em "Selecionar"
E inserir <Email>
E inserir <CopiaEmail>
E inserir <Assunto>
E inserir <MensagemEmail>
E selecionar "Controlar Assinatura do Documento"
E clicar em "Cancelar"
Entao não envia o email para os destinatários

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao              | Modelo     | Email                       | CopiaEmail                | Assunto            |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Motor Vibrador Honda GX-160 QX | Modelo OM2 | renan.caetano@sisloc.com.br | omar.junior@sisloc.com.br | BHLOCADORA-OM-2128 |



@Cenario6
@Manual
@EnviarEmailOM
Esquema do Cenario: Falha ao enviar e-mail de relatório na criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E clicar em "Mais"
Quando selecionar "Enviar E-mail"
E clicar em "Modelo"
E inserir <Modelo>
E clicar em "Selecionar"
E inserir <Email>
E inserir <Assunto>
E inserir <MensagemEmail>
E clicar em "Enviar"
Entao apresenta a <MensagemDeRetorno>
E não envia o email para os destinatários

Exemplos:
| Empresa    | Almoxarifado         | Modelo     | Email                       | Assunto            | MensagemEmail                                                                                | MensagemDeRetorno                                      |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Modelo OM2 | renan.caetano@sisloc.com.br | BHLOCADORA-OM-2128 | SEGUE ORDEM DE MANUTENÇÃO 2128, REFERENTE AO EQUIPAMENTO Bomba de Mangote CR 2" Weber / 727. | Atenção: E-mail não enviado. Falha ao enviar o e-mail! |



@Cenario7
@Automatizar
@EnviarEmailOM
Esquema do Cenario: Enviar e-mail de relatório na criação da Ordem de Manutenção com e-mail destinatário inválido
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E clicar em "Mais"
Quando selecionar "Enviar E-mail"
E clicar em "Modelo"
E inserir <Modelo>
E clicar em "Selecionar"
E inserir <Email>
E inserir <Assunto>
E inserir <MensagemEmail>
E clicar em "Enviar"
Entao apresenta a <MensagemDeRetorno>
E não envia o email para os destinatários

Exemplos:
| Empresa    | Almoxarifado         | Modelo     | Email                       | Assunto            | MensagemEmail                                                                                | MensagemDeRetorno                  |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Modelo OM2 | renan.caetano.sisloc.com.br | BHLOCADORA-OM-2128 | SEGUE ORDEM DE MANUTENÇÃO 2128, REFERENTE AO EQUIPAMENTO Bomba de Mangote CR 2" Weber / 727. | O e-mail do destinatário inválido! |



@Cenario8
@Manual
@EnviarEmailOM
Esquema do Cenario: Enviar e-mail de relatório na criação da Ordem de Manutenção no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar <Modo>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E clicar em "Mais"
E selecionar "Enviar E-mail"
E clicar em "Modelo"
E inserir <Modelo>
E clicar em "Selecionar"
E inserir <Email>
E inserir <CopiaEmail>
E inserir <Assunto>
E inserir <MensagemEmail>
E clicar em "Enviar"
Entao envia o email para os destinatários
E apresenta a <MensagemDeSucesso>

Exemplos:
| Empresa    | Almoxarifado         | Modo    | Modelo     | Email                       | CopiaEmail                | Assunto            | MensagemEmail                                                                                | MensagemDeSucesso                            |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Offline | Modelo OM2 | renan.caetano@sisloc.com.br | omar.junior@sisloc.com.br | BHLOCADORA-OM-2128 | SEGUE ORDEM DE MANUTENÇÃO 2128, REFERENTE AO EQUIPAMENTO Bomba de Mangote CR 2" Weber / 727. | Modelo de OM enviada por e-mail com sucesso! |


