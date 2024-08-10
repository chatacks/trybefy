# Trybefy - Streaming de Músicas

Este projeto foi desenvolvido para revisar e consolidar os principais conceitos de SQL. Nele, construímos um banco de dados, suas respectivas tabelas, e criamos queries para inserção, alteração, remoção e pesquisa de dados. O caso de uso escolhido é um aplicativo de Streaming de músicas chamado **Trybefy**. 

## Visão Geral

O **Trybefy** é uma plataforma de streaming de músicas onde as pessoas usuárias podem ouvir suas músicas favoritas, seguir artistas e acessar o histórico de músicas reproduzidas. O projeto foca na construção e manipulação do banco de dados por meio de queries SQL.

## Funcionalidades

- **Criação de Banco de Dados**: Um banco de dados para gerenciar músicas, artistas, e históricos de reprodução.
- **Manipulação de Dados**: Queries SQL para inserir, alterar, remover e pesquisar dados no banco de dados.
- **Relacionamento de Tabelas**: Gerenciamento de relações entre tabelas, como usuários, músicas, artistas, e históricos de reprodução.

## Tecnologias Utilizadas

- **Linguagem SQL**: Para criação e manipulação de banco de dados.
- **Banco de Dados**: MySQL
- **Node.js**: Ambiente de execução JavaScript usado para gerenciar e executar scripts.
- **Docker**: Para containerização do ambiente de desenvolvimento.
- **Docker Compose**: Para orquestrar os contêineres do projeto.
- **Dependências**: 
  - `mysql2`: Usado para conectar o Node.js ao banco de dados MySQL.

## Estrutura do Projeto

- **Banco de Dados**: O banco de dados foi estruturado para armazenar informações sobre músicas, artistas, usuários, e seus históricos de reprodução.
- **Queries SQL**: Contém scripts SQL para realizar operações de CRUD no banco de dados.
- **Docker Compose**: Arquivo de configuração para gerenciar os contêineres do projeto.

## Configuração do Ambiente

1. **Clone este repositório**:

   ```bash
   git clone git@github.com:chatacks/trybefy.git
   cd trybefy
   ```

2. **Inicie os contêineres**:

   ```bash
   docker-compose up -d
   ```

   Este comando irá subir dois contêineres:
   - **Node.js**: Para gerenciar e executar os scripts SQL.
   - **MySQL**: Banco de dados onde as tabelas e dados serão armazenados.

3. **Acesse o contêiner Node.js**:

   ```bash
   docker exec -it trybefy sh
   ```

4. **Execute as queries SQL**:

   Dentro do contêiner, você pode executar as queries SQL necessárias para criar, inserir, atualizar ou deletar dados do banco de dados.

## Parar a Aplicação

Para parar e remover os contêineres, utilize o comando:

```bash
docker-compose down
```

## Contribuição

Contribuições são bem-vindas! Se você encontrar algum problema ou tiver sugestões de melhoria, sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## Referências

- [Documentação do MySQL](https://dev.mysql.com/doc/)
- [Documentação do Docker](https://docs.docker.com/)
- [Documentação do Node.js](https://nodejs.org/)
