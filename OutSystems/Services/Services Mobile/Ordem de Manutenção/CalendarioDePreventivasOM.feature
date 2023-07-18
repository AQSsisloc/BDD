#language: pt
#CalendarioDePreventivasOM
#ServicesMobile

Funcionalidade: Visualizar o calendário de Preventivas de uma Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero visualizar o calendário de preventivas da ordem de Manutenção
  Para visulizar previsibilidade da manutenção preventiva


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@CalendarioDePreventivasOM
Esquema do Cenario: Visualizar o calendário de preventivas na criação da Ordem de Manutenção do tipo Próprio/Sublocado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando clicar em "Mais"
E selecionar "Calendário de Preventivas"
Entao abre a tela de Calendário de Preventivas
E apresenta as informações do Programa de Manutenção Preventiva

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |



@Cenario2
@Automatizar
@CalendarioDePreventivasOM
Esquema do Cenario: Visualizar o calendário de preventivas de uma Ordem de Manutenção criada do tipo Próprio/Sublocado
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando clicar em "Mais"
E selecionar "Calendário de Preventivas"
Entao abre a tela de Calendário de Preventivas
E apresenta as informações do Programa de Manutenção Preventiva

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao                          |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Betoneira Rental 400 Litros Trifásica 220V |



@Cenario3
@Automatizar
@CalendarioDePreventivasOM
Esquema do Cenario: Visualizar o calendário de preventivas de uma Ordem de Manutenção criada sem programa de manutenção definido para o equipamento
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando clicar em "Mais"
E selecionar "Calendário de Preventivas"
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao                          | MensagemDeRetorno                                                 |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Betoneira Rental 400 Litros Trifásica 220V | Não existe programa de manutenção definido para este equipamento! |



@Cenario4
@Automatizar
@CalendarioDePreventivasOM
Esquema do Cenario: Visualizar o calendário de preventivas de uma Ordem de Manutenção criada sem unidade de medição no cadastro de produto
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando clicar em "Mais"
Entao não exibe a opção de "Calendário de Preventivas"

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao                          |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Betoneira Rental 400 Litros Trifásica 220V |



@Cenario5
@Manual
@CalendarioDePreventivasOM
Esquema do Cenario: Visualizar o calendário de preventivas na criação da Ordem de Manutenção do tipo Próprio/Sublocado no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar <Modo>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E clicar em "Mais"
E selecionar "Calendário de Preventivas"
Entao abre a tela de Calendário de Preventivas
E apresenta as informações do Programa de Manutenção Preventiva

Exemplos:
| Empresa    | Modo    | Almoxarifado         |
| BHLOCADORA | Offline | 1.10 - ESTOQUE VENDA |


