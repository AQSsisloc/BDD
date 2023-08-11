#language: pt
#Remessa
#ServicesMobile


Funcionalidade: Gerenciar Remessas de equipamentos para locação
  Como um usuário do Services Mobile 
  Eu quero gerenciar Remessas dos equipamentos
  Para controlar a locação dos meus equipamentos 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar
@AbrirRemessa
Esquema do Cenario: Abrir remessa sem rota 
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
Quando clicar na <Remessa>
Entao deve apresentar dados da remessa para entrega do equipamento 

Exemplos: 
| Empresa | Remessa   |
| Matriz  | 004825-01 |

