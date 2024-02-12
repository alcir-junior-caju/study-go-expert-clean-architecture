# Curso GO Expert - Clean Architecture

<div>
    <img alt="Criado por Alcir Junior [Caju]" src="https://img.shields.io/badge/criado%20por-Alcir Junior [Caju]-%23f08700">
    <img alt="License" src="https://img.shields.io/badge/license-MIT-%23f08700">
</div>
___

## Descrição

O Curso GO Expert é uma formação completa para fazer com que pessoas desenvolvedoras sejam capazes de trabalhar em projetos expressivos sendo capazes de desenvolver aplicações de grande porte utilizando de boas práticas de desenvolvimento.

---

## Repositório Pai
https://github.com/alcir-junior-caju/study-go-expert

---

## Visualizar o projeto na IDE:

Para quem quiser visualizar o projeto na IDE clique no teclado a tecla `ponto`, esse recurso do GitHub é bem bacana

---

### Clean Architecture
- Termo criado por Robert C. Martin (Uncle Bob) em 2012;
- Trouno-se um livro;
- Buzz word;
- Proteção do domínio da applicação;
- Baixo acoplamento entre as camadas;
- Orientada a casos de uso;

### Curiosidades sobre o livro
- Ele fala especificamente sobre Clean Architecture em 7 páginas do livro;
- Tudo que ele fala especificamente sobre Clean Architecture está literalmente em um artigo em seu blog;

### Porque ler o livro
- Reforçar conhecimento e remover gaps básicos que muitas vezes nem percebemos ter;
- Componentes;
- Arquitetura;
- Limites arquiteturais;
- Percepção sobre regras de negócios;

### Pontos importantes sobre arquitetura
- Formato que o software terá;
- Divisão de componentes;
- Comunicação entre componentes;
- Uma boa arquitetura vai facilitar o processo de desenvolvimento, deploy, operação e manutenção;

### Objetivos de uma boa arquitetura
- O objetivo principal da arquitetura é dar suporte ao ciclo de vida do sistema. Uma boa arquitetura torna o sistema fácil de entender, fácil de desenvolver, fácil de manter e fácil de implantar. O objetivo final é minimizar o custo de vida útil do sistema e maximizar a produtividade do programador;

### Rgras x Detalhes
- Regras de negócio trazem o real valor para o software;
- Detalhes ajudam a suportar as regras;
- Detalhes não devem impactar nas regras de negócio;
- Frameworks, banco de dados, apis, não devem impactar as regras;
- DDD - Atacar a complexidade no coração do software;

### Use Cases
- Intenção;
- Clareza de cada comportamento do software;
- Detalhes não devem impactar nas regras de negócio;
- Frameworks, banco de dados, apis, não devem impactar as regras;

### Use Cases - SRP
- Temos a tendência de reaproveitar user cases por serem muito parecidos;
- Ex.: Alterar x Inserir. Ambos consultam se o registro existe, persistem dados, Mas, são Use Cases diferentes. Por que?
- SRP (Single Responsibility Principle) mudam por razões diferentes;
- Duplicação real x Acidental;

### Limites arquiteturais
- Tudo que não impacta diretamente nas regras de negócio deve estar em um limite arquitetural diferente. Ex.: Não será o frontend, banco de dados que mudarão as regras de negócio da aplicação.

### Input x Output
- No final do dia, tudo se resume a um input que retorna um output;
- Ex.: Criar um pedido (dados do pedido = input), Pedido criado(dados de retorno do pedido);
- Simplifique seu racicocínio ao criar um software sempre pesando em Input e Output;

### DTO - Data Transfer Object
- Trafegar dados entre os limites arquiteturais;
- Objeto anêmico, sem comportamento;
- Contém dados (Input ou Output);
- Não possuí regras de negócio;
- Não possuí comportamento;
- Não faz nada;
- API -> Controller -> Use Case -> Entity;
- Controller cria um DTO com os dados recebidos e envia para o Use Case;
- Use Case executa seu fluxo, pega o resultado, cria um DTO para output e retorna para o Controller;

### Presenters
- Objetos de transformação;
- Adequa o DTO de Input no formato correto para entregar o resultado;
- Lembrando: Um sistema por ter diversos formatos de entrega: Ex.: ZML, JSON, Protobuf, GraphQL, CLI, etc;
- *input = new CategoryInputDTO('name')*;
- *output = CreateCategoryUseCase(input)*;
- *jsonResult = CategoryPresenter(output).toJson()*;
- *xmlResult = CategoryPresenter(output).toXML()*;

### Entities
- Entities da Clean Architecture <> Entities do DDD;
- Clean Architecture define Entity como camada de regras de negócio;
- Elas se aplicam em qualquer situação;
- Não há definição explicita de como criar as Entities;
- Normalmente utilizamos táticas do DDD;
- Enities = Agregados + Domain Services;
