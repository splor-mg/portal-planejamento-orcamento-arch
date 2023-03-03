## SISOR

### Integrações

#### Portal da Transparência

A integração SISOR/SIGPLAN com Portal da Transparência se dá através de acesso do Portal, via ferramenta de ETL e rotinas de carga, em algumas tabelas desses sistemas. Por meio de acesso bimestral ou anual (dependendo da consulta em questão), a atualização é feita no Portal. As cargas não tem agendamento periódico e são executadas de acordo com o momento dos sistemas e autorização da SEPLAG.

Tabelas que o Portal da Transparência acessa do SISOR (banco oracle, esquema AOAD):

- `TBDETOBRAS`
- `TBEMENDAS`
- `TBMUNICIPOBRAS`
- `TBORCAMENTODESPESA`
- `TBORCAMENTODESPESA_PLURIAN`
- `TBORCAMENTOEMENDAFISCAL`
- `TBPROGTRABALHO`
- `TXCATEGORIA`
- `TXFONTE`
- `TXFONTE`
- `TXFUNCAO`
- `TXGRUPODESPESA`
- `TXIPE`
- `TXMODALIDADE`
- `TXMUNICIPIO_SIGPLAN`
- `TXORGAOS`
- `TXPROCEDENCIA`
- `TXPROCEDENCIA`
- `TXPROGRAMA`
- `TXPROJATIV`
- `TXREGIAO_SIGPLAN`
- `TXSUBFUNCAO`
- `TXUNIDADEMEDIDA`
- `TXUNIDADEORCAMENTARIA`

#### Armazém SIAFI

Integração se dá através de mapas de carga, executados diariamente através de agendamento, que buscam dados no Armazem SIAFI e inserem no banco SISOR

#### ADSEG (Sistema de Segurança)

A página de login do Portal Sisor envia login e senha para o sistema ADSEG validar e este verifica se o usuário tem permissão para acessar o sistema e se a senha é válida. Caso positivo, retorna que o acesso está liberado para o SISOR e quais Unidades o usuário tem permissão de acesso. A administração de perfis, usuários, etc. é feita diretamente pelo cliente SEPLAG no sistema ADSEG.

#### SIAFI

São feitas as integrações listadas abaixo:

- na vinculação da classificação da receita criada no SISOR ao SIAFI.
- no envio para o SIAFI das criações e/ou alterações feitas no SISOR para os dados de função, modalidade, natureza da despesa, órgãos, procedência, programa, projeto atividade, subfunção, unidade orçamentária. 

#### Sistema de Gestão de Convênios de Entrada (SIGCON-Entrada)

Os sistemas utilizam a mesma base de dados para os seguintes dados: TA, Concedente, Portaria, Bloqueio de contrato, Bloqueio de convenio entre outros. 

#### Sistema de Gestão de Convênios de Saída (SIGCON-Saída)

O Sigcon Saída (banco Oracle) faz consultas relativas a UO, Órgão, Ações, Programa, Grupo de despesa e Função no banco de dados do SISOR a partir de Dblinks

#### Assembleia Legislativa

Todos os anos são gerados arquivos de texto com extensão .txt e enviados para ALMG para importação no sistema interno deles, após os ajustes a ALMG gera os arquivosde texto com extensão .txt  de emenda e importamos para o sistema Sisor e Sigplan

#### SIGPLAN

O SISOR acessa o banco do SIGPLAN para realizar consultas dos Localizadores, Indicadores, Ações, Produtos, Programas, dentre outros. 

#### GRP