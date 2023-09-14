#language: pt
#Apontamento
#ServicesMobile


Funcionalidade: Gerenciar apontamento de horas nos equipamentos
  Como um usuário do Services Mobile 
  Eu quero gerenciar o apontamento de horas nos equipamentos locados 
  Para ter controle sobre a utilização do equipamento


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar 
@Apontamento
Esquema do Cenario: Apontar horas 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
E clicar na aba "Apontamentos"
E clicar na "Data"
E preencher os registros 
Quando clicar em "Apontar" 
Entao grava o dados
E apresenta <MensagemApontamento> 

Exemplos:
| Empresa | Equipamento | MensagemApontamento  |
| Matiz   | Bebedouro   | Apontado com sucesso |



@Cenario2
@Automatizar 
@Apontamento
Esquema do Cenario: Apontamento em progresso 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
E clicar na aba "Apontamentos"
E clicar em <Apontamento>
Quando preencher  "Horas Trabalhadas" "Início" <InicioTrabalho>
E clicar "Apontar" 
Entao grava o dados
E apontamento <Apontamento2> fica em aberto 

Exemplos:
| Empresa | Equipamento | Apontamento | InicioTrabalho | Apontamento2 |
| Matiz   | Bebedouro   | 05/09/2023  | 13:56          | 05/09/2023   |



@Cenario3
@Automatizar 
@Apontamento
Esquema do Cenario: Apontar hora trabalho fim sem informar hora início   
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
E clicar na aba "Apontamentos"
E clicar em <Apontamento>
E preencher  "Horas Trabalhadas" "Fim" <FimTrabalho>
Quando clicar em "Apontar"
Entao apresenta mensagem <MensagemApontamentoFim>

Exemplos:
| Empresa | Equipamento | Apontamento | FimTrabalho | MensagemApontamentoFim                              |
| Matiz   | Bebedouro   | 05/09/2023  | 15:00       | Em Horas Trabalhadas o campo "Início" é obrigatório |



@Cenario4
@Automatizar 
@Apontamento
Esquema do Cenario: Adicionar Evento 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
E clicar em "+"
Quando clicar em "Adicionar Evento"
E preencher os registros 
E clicar em "Salvar" 
Entao grava o dados
E cria registro na aba "Eventos" 

Exemplos:
| Empresa | Equipamento | 
| Matiz   | Bebedouro   |



@Cenario5
@Automatizar 
@Apontamento
Esquema do Cenario: Excluir Evento  
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
E clicar em "Eventos"
Quando clicar em <Evento>
E clicar em "Excluir" 
E clicar em "Confirmar" 
Entao excluir evento 
E exibe mensagem <MensagemRetornoExclusaoEvento>

Exemplos:
| Empresa | Equipamento | Evento            | MensagemRetornoExclusaoEvento |
| Matiz   | Bebedouro   | Teste apontamento | Excluído com sucesso          |



@Cenario6
@Automatizar 
@Apontamento
Esquema do Cenario: Editar Evento  
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
E clicar em "Eventos"
Quando clicar em <Evento>
E clicar em "Excluir" 
E clicar em "Confirmar" 
Entao excluir evento 
E exibe mensagem <MensagemRetornoExclusaoEvento>

Exemplos:
| Empresa | Equipamento | Evento            | MensagemRetornoEdicao    |
| Matiz   | Bebedouro   | Teste apontamento | Evento salvo com sucesso |



@Cenario7
@Automatizar 
@Apontamento
Esquema do Cenario: Adicionar evento com data "Fim" menor que "Início"  
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
E clicar em "Eventos"
E clicar em "+"
E clicar em "Adicionar Evento" 
Quando preencher data "Fim" menor que data "Início" 
Entao exibe mensagem <MensagemRetornoHorarioEvento>

Exemplos:
| Empresa | Equipamento                  | Evento | MensagemRetornoHorarioEvento                        |
| Matiz   | Acabadora de Concreto PG100G | teste  | Horário inicial deve ser anterior ao horário final. |



@Cenario8
@Automatizar 
@Apontamento
Esquema do Cenario: Adicionar eventos diferentes com mesma data 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
E clicar em "Eventos"
E clicar em "+"
E clicar em "Adicionar Evento" 
E preencher registro para evento <aqs>
Quando preenhcer novo evento <teste> com mesmos dados que <aqs> 
Entao exibe mensagem <MensagemRetornoIgualEvento>

Exemplos:
| Empresa | Equipamento                  | aqs             | teste           | MensagemRetornoIgualEvento                                |
| Matiz   | Acabadora de Concreto PG100G | 16:28 até 16:40 | 16:28 até 16:40 | Não podem haver intersecções entre "Eventos" do mesmo dia |



@Cenario9
@Automatizar 
@Apontamento
Esquema do Cenario: Adicionar Mobilização   
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
E clicar em "Adicionar Mob/Desmob"
Quando selecionar "Mobilização"
E preencher os registros
E clicar em "Salvar" 
Entao grava os dados 
E exibe mensagem <MensagemRetornoMob>

Exemplos:
| Empresa | Equipamento | Evento            | MensagemRetornoMob             |
| Matiz   | Bebedouro   | Teste apontamento | Mobilização criada com sucesso |



@Cenario10
@Automatizar 
@Apontamento
Esquema do Cenario: Adicionar desmobilização  
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
Quando selecionar "Desmobilização"
E preencher os registros
E clicar em "Salvar" 
Entao grava os dados 
E exibe mensagem <MensagemRetornoDesMob>

Exemplos:
| Empresa | Equipamento | Evento            | MensagemRetornoDesMob             |
| Matiz   | Bebedouro   | Teste apontamento | Desmobilização criada com sucesso |



@Cenario11
@Automatizar 
@Apontamento
Esquema do Cenario: Excluir Mobilização
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
E selecionar mobilização 
Quando clicar em "Excluir"
E clicar em "Confirmar" 
Entao excluí registro  
E exibe mensagem <MensagemRetornoExclusaoMob>

Exemplos:
| Empresa | Equipamento | Evento            | MensagemRetornoExclusaoMob       |
| Matiz   | Bebedouro   | Teste apontamento | Mobilização deletada com sucesso |



@Cenario12
@Automatizar 
@Apontamento
Esquema do Cenario: Excluir Desmobilização
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Equipamento>
E selecionar mobilização 
Quando clicar em "Excluir"
E clicar em "Confirmar" 
Entao excluí registro  
E exibe mensagem <MensagemRetornoExclusaoDesMob>

Exemplos:
| Empresa | Equipamento | Evento            | MensagemRetornoExclusaoDesMob    |
| Matiz   | Bebedouro   | Teste apontamento | Mobilização deletada com sucesso |



@Cenario13
@Manual
@Apontamento
Esquema do Cenario: Enviar email pelo apontamento 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Apontamento> 
E e clicar em "+"
Quando clicar em "Enviar E-mail"
E preencher os campos 
E clicar "Enviar"
Entao email é enviado 

Exemplos:
| Empresa | Equipamento                  |
| Matiz   | Acabadoura de concreto PG100 |



@Cenario14
@Manual
@Apontamento
Esquema do Cenario: Adicionar assinatura 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Apontamento> 
E e clicar em "+"
E clicar em "Assinatura(s)"
E clicar em "Adicionar nova assinatura"
E preencher os dados 
Quando clicar em "Coletar Assinatura"
E clicar "Gravar"
Entao grava assinatura
E exibe mensagem <ColetaAss> 

Exemplos:
| Empresa | Equipamento                  | ColetaAss                       |
| Matiz   | Acabadoura de concreto PG100 | Assinatura inserida com sucesso |



@Cenario15
@Manual
@Apontamento
Esquema do Cenario: excluir assinatura 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Apontamento> 
E e clicar em "+"
E clicar em "Assinatura(s)"
E Clicar na assinatura 
Quando clicar "Excluir"
E clicar em "Confirmar"
Entao excluí assinatura 
E exibe mensagem <ExcluiAss> 

Exemplos:
| Empresa | Equipamento                  | ExcluiAss                       |
| Matiz   | Acabadoura de concreto PG100 | Assinatura deletada com sucesso |



@Cenario16
@Manual
@Apontamento
Esquema do Cenario: editar assinatura 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em <Apontamento> 
E e clicar em "+"
E clicar em "Assinatura(s)"
E preencher os dados
E clicar em "Coletar Assinatura"
E clicar "Confirmar"
Quando clicar em "Editar Assinatura"
Entao retorna para coleta de assinatura
Exemplos:
| Empresa | Equipamento                  | 
| Matiz   | Acabadoura de concreto PG100 | 


