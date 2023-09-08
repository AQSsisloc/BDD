#language: pt
#InformacaoPatrimonio
#ServicesMobile


Funcionalidade: Visualizar informações do patrimônio 
  Como um usuário do Services Mobile 
  Eu quero visualizas a informações e arquivos dos patrimônios  
  Para facilitar operacional do usuário com informações do equipamento 


Dado esteja logado no Services Mobile 


@Cenario1
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Visualizar patrimônio código barras/QR 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
Quando clicar em "Ler Código De Barras Ou QR" 
E capturar código de barras ou QR code do patrimônio <PatrimonioPesquisa>
Entao Exibe informações do patrimônio <PatrimonioInformacao>  

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao |
| Matiz   | ACABA-10           | ACABA-10             |



@Cenario2
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Buscar Patrimônio 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
Quando clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
Entao Exibe informações do patrimônio <PatrimonioInformacao>  

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao |
| Matiz   | ACABA-10           | ACABA-10             |



@Cenario3
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Atualizar dados da tela  
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
Quando clicar para atualizar dados 
Entao retorna para tela de pesquisa de patrimônio

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioPesquisa1 |
| Matiz   | ACABA-10           | ACABA-10            |



@Cenario4
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Baixar relatório de OM concluída 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioPesquisa1>
E clicar em "Relatório OM"
E clicar para selecionar modelo do relatório
Quando clicar em uma opção de relatório	 
E clicar "Selecionar"
E clicar "Baixar"
Entao grava os dados 
E apresenta mensagem <MensagemBaixarOM>

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | MensagemBaixarOM          |
| Matiz   | ACABA-10           | ACABA-10             | Arquivo salvo com sucesso |



@Cenario5
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Baixar relatório de OM concluída já existente  
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Relatório OM"
E clicar para selecionar modelo do relatório
E clicar em uma opção de relatório	 
E clicar "Selecionar"
Quando clicar "Baixar"
E arquivo ja exitir
Entao apresenta mensagem <MensagemOMExistente>

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | MensagemOMExistente                   |
| Matiz   | ACABA-10           | ACABA-10             | Arquivo já existe em seu dispositivo! |



@Cenario6
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Cancelar download do relatório de OM concluída   
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Relatório OM"
E clicar para selecionar modelo do relatório
E clicar em uma opção de relatório	 
E clicar "Selecionar"
Quando clicar "Cancelar"
Entao retorna para tela de seleção de modelo de relatório

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao |
| Matiz   | ACABA-10           | ACABA-10             |



@Cenario7
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Abrir relatório de OM concluída   
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Relatório OM"
E clicar sobre relatório baixado <RelatoriOM>
Quando clicar "Abrir"
E seleciona o leitor de PDF
Entao exibe relatório de OM concluída

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | RelatoriOM |
| Matiz   | ACABA-10           | ACABA-10             | 18052      |



@Cenario8
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Excluir relatório de OM concluída   
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Relatório OM"
E clicar sobre relatório baixado <RelatoriOM>
Quando clicar "Excluir"
E clicar "Confirmar"
Entao exclui OM 
E apresenta mensagem <MensagemExcluirOM>

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | RelatoriOM | MensagemExcluirOM            |
| Matiz   | ACABA-10           | ACABA-10             | 18052      | Arquivo excluído com sucesso |



@Cenario9
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Baixar relatório de checklist concluído
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Relatório Checklist"
E clicar para selecionar modelo do relatório
Quando clicar em uma opção de relatório	 
E clicar "Selecionar"
E clicar "Baixar"
Entao grava os dados 
E apresenta mensagem <MensagemBaixarCheck>

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | MensagemBaixarCheck       |
| Matiz   | ACABA-10           | ACABA-10             | Arquivo salvo com sucesso |



@Cenario10
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Baixar relatório de checklist concluído já existente  
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Relatório Checklist"
E clicar para selecionar modelo do relatório
E clicar em uma opção de relatório	 
E clicar "Selecionar"
Quando clicar "Baixar"
E arquivo ja exitir
Entao apresenta mensagem <MensagemChekExistente>

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | MensagemCheckExistente                |
| Matiz   | ACABA-10           | ACABA-10             | Arquivo já existe em seu dispositivo! |



@Cenario11
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Cancelar download do relatório de checklist concluído
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Relatório Checklist"
E clicar para selecionar modelo do relatório
E clicar em uma opção de relatório	 
E clicar "Selecionar"
Quando clicar "Cancelar"
Entao retorna para tela de seleção de modelo de relatório

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao |
| Matiz   | ACABA-10           | ACABA-10             |



@Cenario12
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Abrir relatório de checklist concluído 
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Relatório Checklist"
E clicar sobre relatório baixado <RelatoriChecklis>
Quando clicar "Abrir"
E seleciona o leitor de PDF
Entao exibe relatório de OM concluída

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | RelatoriChecklist |
| Matiz   | ACABA-10           | ACABA-10             | 451               |



@Cenario13
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Excluir relatório de checklist concluído   
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Relatório OM"
E clicar sobre relatório baixado <RelatoriChecklist>
Quando clicar "Excluir"
E clicar "Confirmar"
Entao exclui OM 
E apresenta mensagem <MensagemExcluirChek>

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | RelatoriChecklist | MensagemExcluirCheck         |
| Matiz   | ACABA-10           | ACABA-10             | 451               | Arquivo excluído com sucesso |



@Cenario14
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Baixar arquivo    
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Manuais/Arquivos"
Quando clicar sobre o arquivo
E clicar "Confirmar"
Entao grava os dados 
E apresenta mensagem <MensagemDownloadArquivo>

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | MensagemDownloadArquivo                   |
| Matiz   | ACABA-10           | ACABA-10             | Download do arquivo realizado com sucesso |



@Cenario15
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Abrir arquivo    
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Manuais/Arquivos"
E arquivo estiver baixado
Quando clicar sobre o arquivo
E clicar "Abrir"
E selecionar leitor do arquivo
Entao abre arquivo 

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao |
| Matiz   | ACABA-10           | ACABA-10             |



@Cenario16
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Excluir arquivo    
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
E clicar em "Manuais/Arquivos"
E arquivo estiver baixado
E clicar sobre o arquivo
Quando clicar "Excluir"
E clicar "Confirmar"
Entao exclui arquivo 
E exibe mensagem <MensagemExcluirArquivo>

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | MensagemExcluirArquivo       |
| Matiz   | ACABA-10           | ACABA-10             | Arquivo excluído com sucesso |



@Cenario16
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Adicionar Checklist    
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioPesquisa1>
Quando clicar em "Adicionar Checklist"
Entao abre tela para criar checklist avulso
E carrega os dados do patrimônio <PatrimonioInformacao2>

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | PatrimonioInformacao2 |
| Matiz   | ACABA-10           | ACABA-10             | ACABA-10              |



@Cenario17
@Automatizar 
@InformacaoPatrimonio
Esquema do Cenario: Adicionar OM    
E esteja logado com usuário funcionário
E esteja com a empresa <Empresa>
E clicar em "Menu"
E clicar em "Informações de Patrimônio"
E clicar em "Buscacar Patrimônio" 
E pesquisar nome do patrimônio <PatrimonioPesquisa>
E selecionar patrimônio <PatrimonioInformacao>
Quando clicar em "Adicionar OM"
Entao abre tela de Inclusão de OM 
E carrega dados do <PatrimonioInformacao2>

Exemplos:
| Empresa | PatrimonioPesquisa | PatrimonioInformacao | PatrimonioInformacao2 |
| Matiz   | ACABA-10           | ACABA-10             | ACABA-10              |
