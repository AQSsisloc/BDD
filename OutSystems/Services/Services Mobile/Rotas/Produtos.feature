#language: pt
#Rotas
#ServicesMobile


Funcionalidade: Exibir produtos vinculados vinculados na atividade
  Como um usuário do Services Mobile 
  Eu quero visualizar os produtos 
  Para realizar os procedimentos para cada produto 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar
@Produtos
Esquema do Cenario: Visualizar produtos da atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
Quando clicar em "Produtos"
Entao deve exibir <Produto> da <Atividade>

Exemplos:
| Empresa   | Rota  | Atividade   | Produto                    |
| Matriz BH | 00358 | 1°devolução | 19803016 - Perfurador Solo |
