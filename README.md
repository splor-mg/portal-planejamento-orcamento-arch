# Arquitetura do Portal de Planejamento e Orçamento

Essa documentação está sendo construída utilizando o [modelo c4](https://c4model.com/) para visualização da arquitetura de software em conjunto com a ferramenta [structurizr](https://structurizr.com/) para produção dos diagramas.

## Geração da documentação

```
docker pull structurizr/lite
docker run -it --rm -p 8080:8080 -v $(pwd):/usr/local/structurizr structurizr/lite
```

Navegue para http://localhost:8080/.