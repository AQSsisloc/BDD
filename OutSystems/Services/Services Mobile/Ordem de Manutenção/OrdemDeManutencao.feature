#language: pt
#OrdemDeManutencao
#ServicesMobile


Funcionalidade: Visualizar as OM criadas
  Como um usuário do Services Mobile 
  Eu quero visualizar todas as ordens de manutenções criadas
  Para avaliação e seleção de opções disponíveis


Dado esteja logado no Services Mobile


@Cenario1
@Automatizar
@OrdemDeManutencao
Esquema do Cenario: Visualizar a listagem de até cinco Ordens de Manutenções criadas
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
Entao abre a tela de Ordem de Manutenção
E exibe as ordens de manutenções criadas

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |



@Cenario2
@Automatizar
@OrdemDeManutencao
Esquema do Cenario: Visualizar a listagem de todas as Ordens de Manutenções criadas
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Ir para listagem"
Entao abre a tela de Ordem de Manutenção
E exibe as ordens de manutenções criadas

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |



@Cenario3
@Automatizar
@OrdemDeManutencao
Esquema do Cenario: Pesquisar Ordem de manutenção criada na tela de Listagem
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Ir para listagem"
E inserir <Buscar>
E clicar em "Lupa"
Entao exibe a ordem de manutenção pesquisada

Exemplos:
| Empresa    | Almoxarifado         | Buscar                   |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Integral Engenharia Ltda |



@Cenario4
@Automatizar
@OrdemDeManutencao
Esquema do Cenario: Pesquisar Ordem de manutenção na tela de Listagem que não foi criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Ir para listagem"
E inserir <Buscar>
E clicar em "Lupa"
Entao apresenta <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | Buscar      | MensagemDeRetorno                                |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Sisloc Ltda | Nenhum resultado para os parâmetros pesquisados! |



@Cenario5
@Automatizar
@OrdemDeManutencao
Esquema do Cenario: Filtrar Ordem de manutenção criada na tela de Listagem
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Ir para listagem"
E clicar em "Filtro"
E selecionar <Status>
E inserir <InicioApos>
E inserir <FimAte>
E clicar em "Filtrar"
Entao exibe a ordem de manutenção pesquisada

Exemplos:
| Empresa    | Almoxarifado         | Status   | InicioApos | FimAte     |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Pendente | 01/10/2022 | 01/11/2022 |



@Cenario6
@Automatizar
@OrdemDeManutencao
Esquema do Cenario: Filtrar Ordem de manutenção criada na tela de Listagem de dado não encontrado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Ir para listagem"
E clicar em "Filtro"
E selecionar <Status>
E inserir <InicioApos>
E inserir <FimAte>
E clicar em "Filtrar"
Entao apresenta <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | Status    | InicioApos | FimAte     | MensagemDeRetorno                                |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Concluída | 01/10/2022 | 01/11/2022 | Nenhum resultado para os parâmetros pesquisados! |



@Cenario7
@Automatizar
@OrdemDeManutencao
Esquema do Cenario: Fechar o Filtro de Ordem de manutenção na tela de Listagem
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Ir para listagem"
E clicar em "Filtro"
E selecionar <Status>
E inserir <InicioApos>
E inserir <FimAte>
E clicar em "Fechar"
Entao não exibe nenhum dado
E retorna para a tela de listagem

Exemplos:
| Empresa    | Almoxarifado         | Status   | InicioApos | FimAte     |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Entregue | 01/10/2022 | 01/11/2022 |



@Cenario8
@Automatizar
@OrdemDeManutencao
Esquema do Cenario: Criar Ordem de Manutenção pela tela de listagem
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Mais"
E clicar em "Criar OM"
Entao abre a tela de criação da Ordem de Manutenção

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |



@Cenario9
@Manual
@OrdemDeManutencao
Esquema do Cenario: Ler QrCode da Ordem de Manutenção pela tela de listagem
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Mais"
E clicar em "Ler QrCode"
Entao abre a tela de leitura do QrCode

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |



@Cenario10
@Manual
@OrdemDeManutencao
Esquema do Cenario: Ler Código de Barras da Ordem de Manutenção pela tela de listagem
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Mais"
E clicar em "Ler BarCode"
Entao abre a tela de leitura do Código de barras 

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |



@Cenario11
@Manual
@OrdemDeManutencao
Esquema do Cenario: Abrir mapa da Ordem de Manutenção pela tela de listagem
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Mais"
E clicar em "Abrir Mapa"
Entao abre a tela de mapa das ordens de manutenções criadas

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |



@Cenario12
@Automatizar
@OrdemDeManutencao
Esquema do Cenario: Fechar a tela de listagem das Ordens de Manutenções criadas
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Menu"
E clicar em "Inicio"
Entao fecha a tela de Ordem de Manutenção

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |



@Cenario13
@Automatizar
@OrdemDeManutencao
Esquema do Cenario: Fechar a tela de listagem de todas as Ordens de Manutenções criadas
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar "Ordem De Manutenção"
E clicar em "Ir para listagem"
E clicar em "Menu"
E clicar em "Inicio"
Entao fecha a tela de Ordem de Manutenção

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |


