# Política de Git

# - Política de Commits

## 1 - Faça commits simples

> Dividir os commits em pequenos implementando uma funcionalidade

---

## 2 - Escrever os commits em Ingles

> Para deixar o projeto acessível para todos, o idioma padrão tanto para o código quanto para as coisas relacionadas, logo os commits em ingles **(caso o grupo queira manter em portugues, iremos alinhar isso)**

**Formato**

```markdown
#<numero-da-issue>-<corpo-do-commit>
```

---

# - Política de Branch

## 1 - Branches principais

> O repositório terá duas branches principais: **_master_** e **_develop_**
>
> A branch **_master_** possui sempre a versão mais estável da aplicação, ou seja a versão que deve estar pronta para produção
>
> Já a branch **_develop_** possui a última versão desenvolvida da aplicação. Pode ser considerara a branch de integração, onde os PRS serão feitos nela.

## 2 - Pull Request

> Toda nova **feature** desenvolvida deve ser integrada à branch **_develop_** por meio de um processo de **Pull Request**, que consiste em revisar o código a ser integrado, além de validar a integridade da nova funcionalidade utilizando das ferramentas de integração contínua.

---

# - Política de Issues

### 1.1 - Título da issue

> Descreva o problema de forma sucinta, sendo explicito na descrição do título. Um padrão a ser seguido é **[USX]+[VERBO]+[SUBSTANTIVO]**

### 1.2 - Descrição da issue

> Todas as Issues devem possuir uma descrição detalhada de o que deve ser feito e como deve ser feito.
>
> Em caso de User Story, a issue deve seguir um padrão onde deve responder as seguintes perguntas:

Eu como **[Papel],** quero **[Meta]** para que eu possa **[Motivo]**.

**Exemplo**: “Eu, como **desenvolvedor**, desejo **realizar os testes funcionais das classificações**, para **garantir o devido funcionamento da aplicação**”

Após a descrição detalhada, o corpo da issue deve haver um checklist de todas as operações que deve ser realizada.

**Exemplo**: US18 - Criar resumo de política de git
