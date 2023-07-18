#language: pt
#FotosOM
#ServicesMobile


Funcionalidade: Adicionar imagens na Ordem de Manutenção
  Como um usuário do Services Mobile 
  Eu quero adicionar imagens na Ordem de Manutenção
  Para anexar imagens importantes


Dado esteja logado no Services Mobile


@Cenario1
@Manual
@AdicionarFotoOM
Esquema do Cenario: Adicionar foto na criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar a aba "Fotos"
E clicar em "Foto"
E clicar em "Capture"
Entao grava os dados
E mostra a imagem na aba "Fotos"

Exemplos:
| Empresa    | Almoxarifado         | 
| BHLOCADORA | 1.10 - ESTOQUE VENDA |


@Cenario2
@Manual
@AdicionarImagemOM
Esquema do Cenario: Adicionar imagem na criação da Ordem de Manutenção
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
Quando selecionar a aba "Fotos"
E clicar em "Imagem"
E seleciona uma imagem
E clicar em "Abrir"
Entao grava os dados
E mostra a imagem na aba "Fotos"

Exemplos:
| Empresa    | Almoxarifado         | 
| BHLOCADORA | 1.10 - ESTOQUE VENDA |


@Cenario3
@Manual
@AdicionarFotoOM
Esquema do Cenario: Adicionar foto na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Fotos"
E clicar em "Foto"
E clicar em "Capture"
Entao grava os dados
E mostra a imagem na aba "Fotos"

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao     |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Mangote Vibrador 63mm |


@Cenario4
@Manual
@AdicionarImagemOM
Esquema do Cenario: Adicionar imagem na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Fotos"
E clicar em "Imagem"
E seleciona uma imagem
E clicar em "Abrir"
Entao grava os dados
E mostra a imagem na aba "Fotos"

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao     |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Mangote Vibrador 63mm |


@Cenario5
@Automatizar
@CancelarInsercaoFotoOM
Esquema do Cenario: Cancelar a inserção da foto na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Fotos"
E clicar em "Foto"
E clicar em "Cancelar"
Entao não grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao     |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Mangote Vibrador 63mm |


@Cenario6
@Manual
@ExcluirFotoImagemOM
Esquema do Cenario: Excluir foto/imagem na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Fotos"
E selecionar a foto/imagem 
E clicar em "Excluir"
E clicar em "Confirmar"
Entao grava os dados
E apresenta a <MensagemDeRetorno>

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao     | MensagemDeRetorno          |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Mangote Vibrador 63mm | Foto deletada com sucesso! |


@Cenario7
@Automatizar
@CancelarExclusaoFotoImagemOM
Esquema do Cenario: Cancelar a exclusão da foto/imagem na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Fotos"
E selecionar a foto/imagem 
E clicar em "Excluir"
E clicar em "Cancelar"
Entao não grava os dados
E retornar para a tela anterior

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao     |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Mangote Vibrador 63mm |


@Cenario8
@Manual
@DescricaoFotoImagemOM
Esquema do Cenario: Inserir descrição na foto/imagem na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Fotos"
E selecionar a imagem 
E clicar em "Descrição"
E inserir <Descricao>
E clicar em "Salvar"
Entao grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao     | Descricao                         |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Mangote Vibrador 63mm | Imagem de equipamento com defeito |


@Cenario9
@Manual
@DescricaoFotoImagemOM
Esquema do Cenario: Inserir por voz a descrição na foto/imagem na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Fotos"
E selecionar a imagem 
E clicar em "Descrição"
E clicar em "Voz"
E clicar em "Salvar"
Entao grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao     |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Mangote Vibrador 63mm |


@Cenario10
@Automatizar
@CancelarDescricaoFotoImagemOM
Esquema do Cenario: Cancelar a descrição na foto/imagem na Ordem de Manutenção criada
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
E selecionar "Ordem De Manutenção"
E selecionar <OrdemDeManutencao>
Quando selecionar a aba "Fotos"
E selecionar a imagem 
E clicar em "Descrição"
E clicar em "Cancelar"
E clicar em "Salvar"
Entao grava os dados

Exemplos:
| Empresa    | Almoxarifado         | OrdemDeManutencao     |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Mangote Vibrador 63mm |



@Cenario11
@Manual
@AdicionarFotoOM
Esquema do Cenario: Adicionar foto na criação da Ordem de Manutenção no modo offline
E que esteja logado com usuário funcionário
E selecionar <Empresa>
E selecionar <Almoxarifado>
Quando selecionar <Modo>
E selecionar "Ordem De Manutenção"
E selecionar "Criar OM"
E inserir os dados de cadastro
E clicar em "Salvar"
E selecionar a aba "Fotos"
E clicar em "Foto"
E clicar em "Capture"
Entao grava os dados
E mostra a imagem na aba "Fotos"

Exemplos:
| Empresa    | Almoxarifado         | Modo    |
| BHLOCADORA | 1.10 - ESTOQUE VENDA | Offline |


