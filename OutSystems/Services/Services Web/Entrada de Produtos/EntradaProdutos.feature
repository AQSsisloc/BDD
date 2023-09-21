#language: pt
#EntradaProdutos
#ServicesWeb


Funcionalidade: Confirmar entrada de produtos no almoxarifado 
  Como um usuário do Services Web
  Eu quero confirmar quantidade de produtos no almoxarifado
  Para manter consistência dos almoxarifados 


Dado Esteja logado no Services Web 


@Cenario1
@Automatizar
@EntradaProdutos
Esquema do Cenario: Pesquisar almoxarifado 
E selecionar "Entrada de Produtos"
E clicar "Pesquisa"
E digitar <Pesquisa> 
Quando clicar em "Lupa"
Entao apresenta <AlmoxarifadoPesquisado>

Exemplos:
| Pesquisa      | AlmoxarifadoPesquisado |
| ESTOQUE VENDA | ESTOQUE VENDA          |



@Cenario2
@Automatizar
@#EntradaProdutos
Cenario: atualizar listagem 
E selecionar "Entrada de Produtos" 
Quando clicar em "Lupa"
Entao atualiza listagem de produtos 



@Cenario3
@Automatizar
@EntradaProdutos
Esquema do Cenario: Visualizar quantidades  
E selecionar "Entrada de Produtos"
Quando clicar <Almoxarifado>
Entao apresenta produtos

Exemplos:
| Almoxarifado  |
| ESTOQUE VENDA |



@Cenario4
@Automatizar
@EntradaProdutos
Esquema do Cenario: Exibir observação  
E selecionar "Entrada de Produtos"
E clicar <Almoxarifado>
E <Produto> conter <Observacao>
Quando selecionar <Observacao2> 
Entao apresenta dados 

Exemplos:
| Almoxarifado  | Produto     | Observacao | Observacao2 |
| ESTOQUE VENDA | Abraçadeira | teste      | teste       |
