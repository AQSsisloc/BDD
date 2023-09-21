#language: pt
#EstoqueAlmoxarifado
#ServicesMobile


Funcionalidade: Visualizar quantide em estoque do equipamento 
  Como um usuário do Services Mobile 
  Eu quero visualizas as quantidades disponíveis em estoque dos equipamentos  
  Para facilitar o operacional com informações do equipamento 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar 
@EstoqueAlmoxarifado
Cenario: Visualizar estoque equipamentos ativos
E esteja logado com usuário funcionário
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
Quando clicar em "Estoque Almoxarifado" 
Entao exibe quantidade disponíveis no almoxarifado dos equipamentos   



@Cenario2
@Automatizar 
@EstoqueAlmoxarifado
Cenario: Visualizar estoque equipamentos inativos
E esteja logado com usuário funcionário
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Estoque Almoxarifado"
E clicar em filtro 
Quando marcar somente Inativos 
Entao somente exibe quantidade disponíveis no almoxarifado dos equipamentos inativos



@Cenario3
@Automatizar 
@EstoqueAlmoxarifado
Cenario: Visualizar estoque equipamentos ativos e inativos
E esteja logado com usuário funcionário
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Estoque Almoxarifado"
E clicar em filtro 
Quando marcar Inativos
E marcar Ativos 
Entao exibe quantidade disponíveis no almoxarifado dos equipamentos inativos e ativos 



@Cenario4
@Automatizar 
@EstoqueAlmoxarifado
Esquema do Cenario: Pesquisar equipamentos pelo código
E esteja logado com usuário funcionário
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Estoque Almoxarifado"
E clicar em pesquisa
Quando digitar código do equipamento <Codigoequipamento> no Sisloc
E clicar "Pesquisar" 
Entao exibe equipamento <equipamentopesquisado> conforme o código digitado

Exemplos:
| Empresa | Codigoequipamento | equipamentopesquisado    |
| Matriz  | 332211            | 332211 - Abraçadeira 3/4 |



@Cenario5
@Automatizar 
@EstoqueAlmoxarifado
Esquema do Cenario: Pesquisar equipamentos pela descrição em modo offline
E esteja em modo offline
E esteja logado com usuário funcionário
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Estoque Almoxarifado"
E clicar em pesquisa
Quando digitar descrição do equipamento <Descequipamento> no Sisloc
E clicar "Pesquisar" 
Entao exibe equipamento <equipamentopesquisado> conforme o código digitado

Exemplos:
| Empresa | Descequipamento | equipamentopesquisado    |
| Matriz  | 332211          | 332211 - Abraçadeira 3/4 |



@Cenario6
@Automatizar 
@EstoqueAlmoxarifado
Cenario: Visualizar estoque equipamentos ativos em modo offline
E esteja em modo offline
E esteja logado com usuário funcionário
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
Quando clicar em "Estoque Almoxarifado" 
Entao exibe quantidade disponíveis no almoxarifado dos equipamentos   



@Cenario7
@Automatizar 
@EstoqueAlmoxarifado
Cenario: Visualizar estoque equipamentos inativos em modo offline
E esteja em modo offline
E esteja logado com usuário funcionário
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Estoque Almoxarifado"
E clicar em filtro 
Quando marcar somente Inativos 
Entao somente exibe quantidade disponíveis no almoxarifado dos equipamentos inativos



@Cenario8
@Automatizar 
@EstoqueAlmoxarifado
Cenario: Visualizar estoque equipamentos ativos e inativos em modo offline
E esteja em modo offline
E esteja logado com usuário funcionário
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Estoque Almoxarifado"
E clicar em filtro 
Quando marcar Inativos
E marcar Ativos 
Entao exibe quantidade disponíveis no almoxarifado dos equipamentos inativos e ativos 



@Cenario9
@Automatizar 
@EstoqueAlmoxarifado
Esquema do Cenario: Pesquisar equipamentos pelo código em modo offline
E esteja em modo offline
E esteja logado com usuário funcionário
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Estoque Almoxarifado"
E clicar em pesquisa
Quando digitar código do equipamento <Codigoequipamento> no Sisloc
E clicar "Pesquisar" 
Entao exibe equipamento <equipamentopesquisado> conforme o código digitado

Exemplos:
| Empresa | Codigoequipamento | equipamentopesquisado    |
| Matriz  | 332211            | 332211 - Abraçadeira 3/4 |



@Cenario10
@Automatizar 
@EstoqueAlmoxarifado
Esquema do Cenario: Pesquisar equipamentos pela descrição em modo offline 
E esteja em modo offline
E esteja logado com usuário funcionário
E clicar em "Ordem de Manutenção"
E clicar em "Menu"
E clicar em "Estoque Almoxarifado"
E clicar em pesquisa
Quando digitar descrição do equipamento <Descequipamento> no Sisloc
E clicar "Pesquisar" 
Entao exibe equipamento <equipamentopesquisado> conforme o código digitado

Exemplos:
| Empresa | Descequipamento | equipamentopesquisado    |
| Matriz  | 332211          | 332211 - Abraçadeira 3/4 |
