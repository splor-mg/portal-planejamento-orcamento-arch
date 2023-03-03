## SIGPLAN

### Integrações

#### Portal da Transparência

A integração SISOR/SIGPLAN com Portal da Transparência se dá através de acesso do Portal, via ferramenta de ETL e rotinas de carga, em algumas tabelas desses sistemas. Por meio de acesso bimestral ou anual (dependendo da consulta em questão), a atualização é feita no Portal. As cargas não tem agendamento periódico e são executadas de acordo com o momento dos sistemas e autorização da SEPLAG.

Tabelas que o Portal da Transparência acessa do SIGPLAN (banco SQLServer):

- `sig2000 LocalizadorRascunho`
- `sig2000 SituacaoAcaoRascunho`
- `sig2000 DadoFinanceiroRascunho`
- `sig2000 DadoFisicoRascunho`
- `sig2000 OrcamentoGeralUniao`
- `sig2000 Indicador`
- `Sigplan Usuario`
- `Sigplan UsuarioNivel`
- `sigplan PPA`
- `Sigplan NivelAcesso`
- `Sigplan DetalhesUsuario`
- `sigplan_20XX PPAUnidade`
- `sigplan_20XX PPAFuncao`
- `sigplan_20XX TipoAcao`
- `sigplan_20XX Municipio`
- `sigplan_20XX PPAIndicador`
- `sigplan_20XX PPAPrograma`
- `sigplan_20XX PPALocalizador`
- `sigplan_20XX PPAAcao`
- `sigplan_20XX PPASubFuncao`
- `sigplan_20XX PPAIag`
- `sigplan_20XX PPAPublicoAlvo`
- `sigplan_20XX Produto`
- `sigplan_20XX UnidadeMedida`
- `sigplan_20XX UnidadeMedidaIndicador`
- `sigplan_20XX Periodicidade`
- `sigplan_20XX BaseGeografica`
- `sigplan_20XX PPAOrgao`
- `sigplan_2022 PPACausa`
- `sigplan_2022 Regiao`

#### Armazém SIAFI

Integração se dá através de mapas de carga, executados diariamente através de agendamento, que buscam dados no Armazem SIAFI e inserem no banco SISOR

#### ALMG

Todos os anos são gerados arquivos de texto com extensão .txt e enviados para ALMG para importação no sistema interno deles, após os ajustes a ALMG gera os arquivosde texto com extensão .txt  de emenda e importamos para o sistema Sisor e Sigplan

#### SIAFI

Semestralmente, com autorização da SEPLAG, é gerado um arquivo de texto, extensão .txt, com dados de localizadores e ações do SIGPLAN, através do módulo de Monitoramento. É feita também uma solicitação interna a área de inteligência de dados para a geração dos arquivos de texto, extensão .txt, "consol_desp_almg" e "invest_regionaliz_almg.", com os dados do Armazém SIAFI. Esses arquivos são enviados para o responsável na ALMG via email.

#### SISOR

O SIGPLAN (SQLServer) envia dados de ações, programas, metas, produtos entre outros, para o banco de dados do  SISOR (Oracle). A comunicação é realizada através da criação de um usuário ODBC Oracle no servidor de aplicação do SIGPLAN.

#### GRP
