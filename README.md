# Arquitetura do Portal de Planejamento e Orçamento

O [Portal de Planejamento e Orçamento](http://www.orcamento.mg.gov.br/) é composto pelo Sistema de Informações Gerenciais e de Planejamento (SIGPLAN) e pelo Sistema Orçamentário (SISOR). 

Uma versão estática do código fonte obtida junto a [Prodemge](https://www.prodemge.gov.br/) está disponível nos repositórios privados [splor-mg/sigplan](https://github.com/splor-mg/sigplan) e [splor-mg/sisor](https://github.com/splor-mg/sisor).

Esse repositório é um esforço de construção de documentação para visualização da arquitetura atual do SIGPLAN e SISOR utilizando o [modelo c4](https://c4model.com/) e a ferramenta [structurizr](https://structurizr.com/).

A última versão pode ser visualizada [aqui](https://htmlpreview.github.io/?https://github.com/splor-mg/portal-planejamento-orcamento-arch/blob/main/index.html).

## Geração da documentação

```
docker pull structurizr/lite
docker run -it --rm -p 8080:8080 -v $(pwd):/usr/local/structurizr structurizr/lite
```

Navegue para http://localhost:8080/.