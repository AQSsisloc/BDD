#language: pt
#InformarPendenciaOM
#ServicesMobile


Funcionalidade: Baixar Modelo de relatório da Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero baixar o modelo de relátorio da Ordem de Manutenção
  Para visualização e download do modelo de relatório


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@BaixarModeloOM
Esquema do Cenario: Baixar modelo de relatório na criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E clicar em "Mais"
Quando selecionar "Baixar Modelo"
E clicar em "Modelo"
E selecionar <OpcoesRelatorios>
E clicar em "Selecionar"
E clicar em "Baixar"
Entao baixa o modelo do relatório para visualização
E apresenta a opção de download

Exemplos:
| Empresa   | Almoxarifado         | OpcoesRelatorios |
| MATRIZ BH | 1.10 - ESTOQUE VENDA | Modelo E-mail    |



@Cenario2
@Manual
@BaixarModeloOM
Esquema do Cenario: Baixar modelo de relatório na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Baixar Modelo"
E clicar em "Modelo"
E selecionar <OpcoesRelatorios>
E clicar em "Selecionar"
E clicar em "Baixar"
Entao baixa o modelo do relatório para visualização
E apresenta a opção de download

Exemplos:
| Empresa   | Almoxarifado         | OrdemDeManutencao | OpcoesRelatorios |
| MATRIZ BH | 1.10 - ESTOQUE VENDA | Bebedouro         | Modelo E-mail    |



@Cenario3
@Manual
@BaixarModeloOM
Esquema do Cenario: Baixar modelo de relatório na Ordem de Manutenção criada com controle de assinatura
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Baixar Modelo"
E clicar em "Modelo"
E selecionar <OpcoesRelatorios>
E clicar em "Selecionar"
E clicar em "Controlar Assinatura do Documento"
E clicar em "Baixar"
Entao baixa o modelo do relatório para visualização
E apresenta a opção de download

Exemplos:
| Empresa   | Almoxarifado         | OrdemDeManutencao | OpcoesRelatorios |
| MATRIZ BH | 1.10 - ESTOQUE VENDA | Bebedouro         | Modelo E-mail    |



@Cenario4
@Automatizar
@BaixarModeloOM
Esquema do Cenario: Baixar modelo de relatório na Ordem de Manutenção sem relatório cadastrado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Baixar Modelo"
E clicar em "Modelo"
Entao não habilita a opção de "Selecionar"

Exemplos:
| Empresa   | Almoxarifado         | OrdemDeManutencao      |
| MATRIZ BH | 1.10 - ESTOQUE VENDA | Betoneira 120 Lts Mono |



@Cenario5
@Automatizar
@BaixarModeloOM
Esquema do Cenario: Fechar a baixa do modelo de relatório na Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
E clicar em "Mais"
Quando selecionar "Baixar Modelo"
E clicar em "Fechar"
Entao fecha a tela de "Baixar modelo em PDF"

Exemplos:
| Empresa   | Almoxarifado         | OrdemDeManutencao |
| MATRIZ BH | 1.10 - ESTOQUE VENDA | Bebedouro         |



@Cenario6
@Manual
@BaixarModeloOM
Esquema do Cenario: Baixar modelo de relatório na criação da Ordem de Manutenção no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar <Modo>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E clicar em "Mais"
E selecionar "Baixar Modelo"
E clicar em "Modelo"
E selecionar <OpcoesRelatorios>
E clicar em "Selecionar"
E clicar em "Baixar"
Entao baixa o modelo do relatório para visualização
E apresenta a opção de download

Exemplos:
| Empresa   | Almoxarifado         | Modo    | OpcoesRelatorios |
| MATRIZ BH | 1.10 - ESTOQUE VENDA | Offline | Modelo E-mail    |


