#language: pt
#Rotas
#ServicesMobile


Funcionalidade: Exibir meio para contato com cliente
  Como um usuário do Services Mobile 
  Eu quero contactar o cliente 
  Para trocar informações do atendimento

Dado esteja logado no Services Mobile 

@Cenario1
@Automatizar
@ContatosEmail
Esquema do Cenario: Enviar email para o contato de uma atividade
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "Contatos"
Quando clicar no <email>  
Entao deve ser direcionado para o email 
E conter campo destinatário preenchido com <email>

Exemplos:
| Empresa   | Rota  | Atividade          | Email                      |
| Matriz BH | 00360 | 1° Teste Atividade | samuel.silva@sisloc.com.br |


@Cenario2
@Automatizar
@ContatosTelefone
Esquema do Cenario: Direcionar para o discador com contato preenchido
E esteja logado com usuário funcionário
E esteja logado com <Empresa>
E clicar na <Rota>
E clicar na <Atividade>
E clicar em "Contatos"
Quando clicar no <Numero>  
Entao deve ser direcionado para o discador  
E conter campo numero preenchido com <Numero>

Exemplos:
| Empresa   | Rota  | Atividade    | Numero      |
| Matriz BH | 00358 | 1° Devolucao | 31988880909 |


