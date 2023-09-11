#language: pt
#FilaSincronizacao
#ServicesMobile


Funcionalidade: Verificar fila de sincronização dos processos pendentes 
  Como um usuário do Services Mobile 
  Eu quero verificar a fila de sincronização dos processos pendentes  
  Para ter controle da finalização de processos 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar 
@FilaSincronizao 
Esquema do Cenario: visualizar processos não sincronizados 
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
Quando clicar em "Fila de Sincronização"
E marcar <Parametro>
Entao apresenta processos na fila para sincronização

Exemplos:
| Empresa | Parametro                            |
| Matriz  | Não exibe processos já sincronizados |



@Cenario2
@Automatizar 
@FilaSincronizao 
Esquema do Cenario: visualizar processos já sincronizados 
E esteja logado com usuário funcionário
E esteja logado com empresa <Empresa>
Quando clicar em "Fila de Sincronização"
E marcar <Parametro>
Entao apresenta processos na fila para sincronização

Exemplos:
| Empresa | Parametro                        |
| Matriz  | Exibe processos já sincronizados |
