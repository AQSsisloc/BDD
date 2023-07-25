#language: pt
#Atividades
#ForcaDeVendasWeb


Funcionalidade: Cadastrar uma atividade a ser executada por um responsável
  Como um usuário do Força de Vendas 
  Eu quero cadastrar uma atividade
  Para utilizar nos processos de vendas


Dado esteja logado no Força de Vendas Web


@Cenario1
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Cadastrar uma atividade do tipo "Prospecção" 
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Prospecção"
E inserir <Prospeccao>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Prospeccao       | MensagemDeSucesso            |
| Alessandra Kruse | Atividade salva com sucesso! |



@Cenario2
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Cadastrar uma atividade do tipo "Prospecção" sem preencher campo obrigatório
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Prospecção"
E clicar em "Continuar"
Entao não grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| MensagemDeSucesso                      |
| Obrigatório selecionar uma prospecção! |



@Cenario3
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Cancelar o cadastro de uma atividade do tipo "Prospecção"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Prospecção"
E inserir <Prospeccao>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Prospeccao       |
| Alessandra Kruse |



@Cenario4
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Editar uma atividade do tipo "Prospecção"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao não grava os dados

Exemplos:
| Pesquisa         | Atividade |
| Alessandra Kruse | Skype     |



@Cenario5
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Cancelar uma atividade do tipo "Prospecção"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Cancelar"
E clicar em "Sim"
Entao cancela os dados

Exemplos:
| Pesquisa         | Atividade |
| Alessandra Kruse | Skype     |



@Cenario6
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Estornar o cancelamento de uma atividade do tipo "Prospecção"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "Filtro"
E inserir <Status>
E inserir <Atividades>
E clicar em "Filtrar"
E clicar em <Atividade>
E clicar em "Estornar"
E clicar em "Sim"
Entao estorna o cancelamento dos dados

Exemplos:
| Pesquisa         | Atividades | Atividade |
| Alessandra Kruse | Skype      | Skype     |



@Cenario7
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Excluir uma atividade do tipo "Prospecção"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Cancelar"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa         | Atividade | MensagemDeRetorno               |
| Alessandra Kruse | Skype     | Atividade excluída com sucesso! |



@Cenario8
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Concluir uma atividade do tipo "Prospecção"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Concluir"
E inserir <Observacao>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa         | Atividade        | Observacao                   | MensagemDeRetorno                |
| Visita Comercial | Visita Comercial | Atividade concluida pela AQS | Atividade concluída com sucesso! |



@Cenario9
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Concluir a atividade e cadastrar uma nova atividade do tipo "Prospecção"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Concluir"
E inserir <Observacao>
E clicar em "Salvar e Continuar"
Entao grava os dados
E apresenta a "+Atividade"

Exemplos:
| Pesquisa         | Atividade        | Observacao                   | MensagemDeRetorno                |
| Visita Comercial | Visita Comercial | Atividade concluida pela AQS | Atividade concluída com sucesso! |



@Cenario10
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Estornar a conclusão de uma atividade do tipo "Prospecção"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "Filtro"
E inserir <Status>
E clicar em "Filtrar"
E clicar em <Atividade>
E clicar em "Estornar"
E clicar em "Sim"
Entao estorna a conclusão dos dados

Exemplos:
| Status    | Atividade        |
| Concluído | Visita Comercial |



@Cenario11
@Automatizar
@AtividadeConta
Esquema do Cenario: Cadastrar uma atividade do tipo "Conta" 
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Conta"
E inserir <Conta>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeSucesso>

Exemplos:
| Conta                                          | MensagemDeSucesso            |
| BHJA TRANSPORTES MUDANCAS E SERVICOS LTDA - ME | Atividade salva com sucesso! |



@Cenario12
@Automatizar
@AtividadeConta
Esquema do Cenario: Cadastrar uma atividade do tipo "Conta" sem preencher campo obrigatório
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Conta"
E clicar em "Continuar"
Entao não grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| MensagemDeSucesso                 |
| Obrigatório selecionar uma conta! |



@Cenario13
@Automatizar
@AtividadeConta
Esquema do Cenario: Cancelar o cadastro de uma atividade do tipo "Conta"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "+Atividade"
E clicar em "Conta"
E inserir <Conta>
E preencher os campos disponíveis
E clicar em "Continuar"
E preencher os campos disponíveis
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Prospeccao       |
| Alessandra Kruse |



@Cenario14
@Automatizar
@AtividadeConta
Esquema do Cenario: Editar uma atividade do tipo "Conta"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Editar"
E preencher os campos disponíveis
E clicar em "Salvar"
Entao não grava os dados

Exemplos:
| Pesquisa         | Atividade |
| Alessandra Kruse | Skype     |



@Cenario15
@Automatizar
@AtividadeProspeccao
Esquema do Cenario: Cancelar uma atividade do tipo "Conta"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Cancelar"
E clicar em "Sim"
Entao cancela os dados

Exemplos:
| Pesquisa         | Atividade |
| Alessandra Kruse | Skype     |



@Cenario16
@Automatizar
@AtividadeConta
Esquema do Cenario: Estornar o cancelamento de uma atividade do tipo "Conta"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "Filtro"
E inserir <Status>
E inserir <Atividades>
E clicar em "Filtrar"
E clicar em <Atividade>
E clicar em "Estornar"
E clicar em "Sim"
Entao estorna o cancelamento dos dados

Exemplos:
| Pesquisa         | Atividades | Atividade |
| Alessandra Kruse | Skype      | Skype     |



@Cenario17
@Automatizar
@AtividadeConta
Esquema do Cenario: Excluir uma atividade do tipo "Conta"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Cancelar"
E clicar em "Sim"
Entao exclui os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa         | Atividade | MensagemDeRetorno               |
| Alessandra Kruse | Skype     | Atividade excluída com sucesso! |



@Cenario18
@Automatizar
@AtividadeConta
Esquema do Cenario: Concluir uma atividade do tipo "Conta"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Concluir"
E inserir <Observacao>
E clicar em "Salvar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Pesquisa         | Atividade        | Observacao                   | MensagemDeRetorno                |
| Visita Comercial | Visita Comercial | Atividade concluida pela AQS | Atividade concluída com sucesso! |



@Cenario9
@Automatizar
@AtividadeConta
Esquema do Cenario: Concluir a atividade e cadastrar uma nova atividade do tipo "Conta"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando inserir <Pesquisa>
E clicar em "Lupa"
E clicar em <Atividade>
E clicar em "Concluir"
E inserir <Observacao>
E clicar em "Salvar e Continuar"
Entao grava os dados
E apresenta a "+Atividade"

Exemplos:
| Pesquisa         | Atividade        | Observacao                   | MensagemDeRetorno                |
| Visita Comercial | Visita Comercial | Atividade concluida pela AQS | Atividade concluída com sucesso! |



@Cenario10
@Automatizar
@AtividadeConta
Esquema do Cenario: Estornar a conclusão de uma atividade do tipo "Conta"
E que esteja logado com usuário funcionário
E selecionar "Processos"
E selecionar "Atividades"
Quando clicar em "Filtro"
E inserir <Status>
E clicar em "Filtrar"
E clicar em <Atividade>
E clicar em "Estornar"
E clicar em "Sim"
Entao estorna a conclusão dos dados

Exemplos:
| Status    | Atividade        |
| Concluído | Visita Comercial |



