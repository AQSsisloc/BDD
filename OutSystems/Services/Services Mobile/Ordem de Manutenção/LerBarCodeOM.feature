#language: pt
#LerBarCode
#ServicesMobile


Funcionalidade: Ler código de barras de um patrimônio para abrir uma Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero ler um código de barras de um patrimônio 
  Para abrir uma nova Ordem de Manutenção


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@LerBarCode
Esquema do Cenario: Ler código de barras de um patrimônio para abrir uma Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando clicar em "Mais"
E selecionar "Ler BarCode"
E realiza leitura do código de barras
Entao abre a tela de criação da Ordem de Manutenção

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |



@Cenario2
@Manual
@LerBarCode
Esquema do Cenario: Ler código de barras de um patrimônio na tela de criação de uma Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E clicar em "Mais"
E selecionar "Criar OM"
Quando clicar "Ler BarCode"
E realiza leitura do código de barras
Entao preenche os dados do patrimônio na tela

Exemplos:
| Empresa    | Almoxarifado         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA |



@Cenario3
@Manual
@LerBarCode
Esquema do Cenario: Ler código de barras de um patrimônio não cadastrado
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E clicar em "Mais"
E selecionar "Criar OM"
Quando clicar "Ler BarCode"
E realiza leitura do código de barras
Entao apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | MensagemDeRetorno                              |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Patrimônio do código de barras não localizado! |


