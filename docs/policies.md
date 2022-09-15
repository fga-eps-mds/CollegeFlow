# Políticas do Repositório

## Histórico de versão

| Data       | Versão | Modificação                       | Autor            |
| :--------- | :----- | :-------------------------------- | :--------------- |
| 26/06/2022 | 1.0    | Criação do documento de políticas | Maurício Machado |
| 26/06/2022 | 1.1    | Adição políticas de commit        | Maurício Machado |
| 26/06/2022 | 1.2    | Adição políticas de pull Request  | Maurício Machado |

## Introdução

Este documento tem como objetivo explicar os procedimentos a serem feitos para que as políticas deste repositório sejam seguidas adequadamente.

Aqui se encontram:

- Política de Branch
- Política de Commits
- Política de Pull Requests

## Políticas de Branch

Branchs devem seguir as seguintes regras.

- Branch **master** representa uma versão estável do produto, contendo código testado e versionado. Essa branch parte da branch **develop** através de pull requests aprovados no fim de cada release

  Regras:

  1. Existe apenas uma branch **master**.
  2. Não são permitidos commits feitos diretamente na master.

- Branch **develop** contém a versão mais atualizada do código que está sendo desenvolvido. Essa branch está sempre sincronizada com a **master** e é base para as branches **feat**.

  Regras:

  1. Existe apenas uma branch **develop**.

### Nomenclatura de branches

Ao criar novas branches iremos dividí-las em 3 categorias: feat, refac, fix. Esses serão prefixos utilizados para criação da branch.

> **Exemplo**: Criação de uma nova feature para adição de imagens. <code>feat/add_images</code>

> **FEAT**: Da palavra feature, representará todas as branchs que adicionam novos elementos ao projeto.

> **REFAC**: Da palavra refactory, remete as branchs que modificam elementos **já** presentes no projeto. Contudo, não são fixes e sim alterações pra uma melhor performance, escolha de design e outros nesse mesmo ambiente.

> **FIX**: Branchs que consertam problemas/erros existentes no projeto.

## Políticas de Commits

Commits devem ser escritos de forma clara e breve, em inglês, descrevendo as alterações feitas.

Regras para escrita das mensagens no commits:

1. Utilizar prefixos feat, refac, fix, seguindo a lógica de **nomenclatura de branches**.
2. Faça commits **pequenos**, não agrupe múltiplas funcionalidades em um commmit! Divida nos menore blocos de código possível.
3. Em caso de commit realizado por mais de uma pessoa, utilize o [**coauthor**](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/creating-a-commit-with-multiple-authors) para dar créditos.

## Políticas de Pull Request

Pull Requests devem conter no título abordar a issue trabalhada. Na descrição é immportante prover todos os links necessários para termos um entendimento completo da task em questão.
Estrutura básico para o nome do Pull request: <code>[#IssueCode/Prefix]: Problema principal</code>

> **Exemplo**: <code>[#53/FEAT]: Crud to Admin</code>

Regras

1. Linkar quem participou do Pull request.
2. Ter dois approves antes de dar mergear o Pull request.
3. Ter aprovação nos testes.
4. Linkar PR com a issue(es) relacionada(as).

Observações

1. PRs devem ser pequenos para ter uma revisão de boa qualidade.
2. Use stack de PRs.
3. Evite PRs com múltiplas lógicas que podem ser separadas.

## Referências

[Padrões e nomenclaturas no git](https://www.brunodulcetti.com/padroes-e-nomenclaturas-no-git/)

[Writing git commit message](https://365git.tumblr.com/post/3308646748/writing-git-commit-messages)

[Stack de Pull Requests](https://blog.logrocket.com/using-stacked-pull-requests-in-github/)
