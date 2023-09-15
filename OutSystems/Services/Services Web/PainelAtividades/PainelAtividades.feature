#language: pt
#PainelAtividades
#ServicesWeb


Funcionalidade: Exibir atividades e suas situações 
  Como um usuário do Services WEB 
  Eu quero visualizr as atividades 
  Para gerenciar o fluxo de trabalho 


Dado esteja logado no Services Web


@Cenario1
@Automatizar
@PainelAtividades
Esquema do Cenario: Cadastrar um checklist avulso para o patrimônio
E selecionar <Empresa>
Quando selecionar "Services"
Entao diereciona para tela de painel de atividades 
E exibe atividades da aba "Mês Atual"

Exemplos:
| Empresa | 
| MATRIZ  | 

