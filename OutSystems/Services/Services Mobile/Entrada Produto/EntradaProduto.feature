#language: pt
#EntradaProduto
#ServicesMobile


Funcionalidade: Confirmar quantidade de equipamento no almoxarifado 
  Como um usuário do Services Mobile 
  Eu quero confirmar as quantidade disponíveis de cada equipamento 
  Para controlar a disponibilidade do inventário de cada produto 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar 
@EntradaProduto
Esquema do Cenario: Confirmar quantidade pendente 
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Entrada de Produtos"
E clicar em "Pendentes"
Quando clicar no equipamento <ProdutoPendente>
E clicar em "Confirmar"
Entao equipamento <ProdutoConfirmado> gravana seção "Confirmados"

Exemplos:
| Empresa | ProdutoPendente | ProdutoConfirmado |
| Matriz  | Abraçadeira 3/4 | Abraçadeira 3/4   |



@Cenario2
@Automatizar 
@EntradaProduto
Esquema do Cenario: Negar quantidade pendente 
E esteja logado com usuário funcionário
E esteja logado com empresa <Matriz>
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Entrada de Produtos"
E clicar em "Pendentes"
E clicar no equipamento <ProdutoPendente>
Quando clicar em "Negar"
E preencher observação <Observacao>
E clicar em "Negar"
Entao equipamento <ProdutoConfirmado> gravana seção "Negados"

Exemplos:
| Empresa | ProdutoPendente | ProdutoConfirmado | Observacao |
| Matriz  | Abraçadeira 7"  | Abraçadeira 7"    | teste      |



@Cenario3
@Manual
@EntradaProduto
Esquema do Cenario: Negar quantidade pendente observaçao por voz
E esteja logado com usuário funcionário
E esteja logado com empresa <Matriz>
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Entrada de Produtos"
E clicar em "Pendentes"
E clicar no equipamento <ProdutoPendente>
E clicar em "Negar"
Quando clicar no "Microfone" 
E falar a observação  
E clicar em "Negar"
Entao equipamento <ProdutoConfirmado> gravana seção "Negados"

Exemplos:
| Empresa | ProdutoPendente  | ProdutoConfirmado |
| Matriz  | Abraçadeira BF20 | Abraçadeira BF20  |



@Cenario4
@Automatizar 
@EntradaProduto
Esquema do Cenario: Excluir observação 
E esteja logado com usuário funcionário
E esteja logado com empresa <Matriz>
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Entrada de Produtos"
E clicar em "Pendentes"
E clicar no equipamento <ProdutoPendente>
E clicar em "Negar"
E preencher Observação <Observacao> 
Quando clicar em "X"
Entao limpa campo observação 

Exemplos:
| Empresa | ProdutoPendente   | Observacao |
| Matriz  | Abraçadeira BS62Y | teste      |



@Cenario5
@Automatizar 
@EntradaProduto
Esquema do Cenario: Pesquisar equipamento 
E esteja logado com usuário funcionário
E esteja logado com empresa <Matriz>
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Entrada de Produtos"
E clicar em "Buscar"
E digitar nome do equipamento <NomEquipamento>  
Quando clicar em pesquisar 
Entao exibe somente equipamento <EquipamentoPesquisado> pesquisado 

Exemplos:
| Empresa | NomEquipamento   | EquipamentoPesquisado |
| Matriz  | Abraçadeira BF20 | Abraçadeira BF20      |



@Cenario6
@Automatizar 
@EntradaProduto
Esquema do Cenario: Confirmar quantidade pendente em modo offline
E esteja em modo offline 
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Entrada de Produtos"
E clicar em "Pendentes"
Quando clicar no equipamento <ProdutoPendente>
E clicar em "Confirmar"
Entao equipamento <ProdutoConfirmado> gravana seção "Confirmados"

Exemplos:
| Empresa | ProdutoPendente | ProdutoConfirmado |
| Matriz  | Abraçadeira 3/4 | Abraçadeira 3/4   |



@Cenario7
@Automatizar 
@EntradaProduto
Esquema do Cenario: Negar quantidade pendente em modo offline 
E esteja em modo offline 
E esteja logado com usuário funcionário
E esteja logado com empresa <Matriz>
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Entrada de Produtos"
E clicar em "Pendentes"
E clicar no equipamento <ProdutoPendente>
Quando clicar em "Negar"
E preencher observação <Observacao>
E clicar em "Negar"
Entao equipamento <ProdutoConfirmado> gravana seção "Negados"

Exemplos:
| Empresa | ProdutoPendente | ProdutoConfirmado | Observacao |
| Matriz  | Abraçadeira 7"  | Abraçadeira 7"    | teste      |



@Cenario8
@Automatizar 
@EntradaProduto
Esquema do Cenario: Excluir observação em modo offline
E esteja em modo offline  
E esteja logado com usuário funcionário
E esteja logado com empresa <Matriz>
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Entrada de Produtos"
E clicar em "Pendentes"
E clicar no equipamento <ProdutoPendente>
E clicar em "Negar"
E preencher Observação <Observacao> 
Quando clicar em "X"
Entao limpa campo observação 

Exemplos:
| Empresa | ProdutoPendente   | Observacao |
| Matriz  | Abraçadeira BS62Y | teste      |



@Cenario9
@Automatizar 
@EntradaProduto
Esquema do Cenario: Pesquisar equipamento em modo offline
E esteja em modo offline 
E esteja logado com usuário funcionário
E esteja logado com empresa <Matriz>
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Entrada de Produtos"
E clicar em "Buscar"
E digitar nome do equipamento <NomEquipamento>  
Quando clicar em pesquisar 
Entao exibe somente equipamento <EquipamentoPesquisado> pesquisado 

Exemplos:
| Empresa | NomEquipamento   | EquipamentoPesquisado |
| Matriz  | Abraçadeira BF20 | Abraçadeira BF20      |

