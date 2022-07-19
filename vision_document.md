# Histórico de Revisão

| Data     | Versão | Modificação                                                   | Autor                                              |   Revisor   |
| -------- | ------ | ------------------------------------------------------------- | -------------------------------------------------- | ----------- |
| 13/07/22 | 0.1    | Adição da seção introdução                                    | [Lucas Gabriel](https://github.com/lucasgabriel-2) | ----------- |
| 13/07/22 | 0.2    | Adição da seção posicionamento                                | [Lucas Spinosa](http://github.com/LucasSpinosa)    | ----------- |
| 15/07/22 | 0.3    | Adição da seção descrições das partes interessadas e usuários | [Lucas Spinosa](http://github.com/LucasSpinosa)    | ----------- |
| 15/07/22 | 0.4    | Adição da seção visão geral do produto                        | [Lucas Gabriel](https://github.com/lucasgabriel-2) | ----------- |
| 15/07/22 | 0.5    | Adição da seção de recursos do produto                        | [Lucas Spinosa](http://github.com/LucasSpinosa)    | ----------- |
| 15/07/22 | 0.6    | Adição da seção de restrições do produto                      | [Lucas Gabriel](https://github.com/lucasgabriel-2) | ----------- |
| 15/07/22 | 0.7    | Adição da seção de requisitos não-funcionais do produto       | [Lucas Spinosa](http://github.com/LucasSpinosa)    | ----------- |
| 15/07/22 | 0.8    | Adição da seção de requisitos funcionais do produto           | [Lucas Gabriel](https://github.com/lucasgabriel-2) | ----------- |
| 15/07/22 | 0.9    | Adição de link do perfil no GitHub dos desenvolvedores        | [Lucas Spinosa](http://github.com/LucasSpinosa)    | ----------- |
| 15/07/22 | 1.0    | Alteração na seção de requisitos                              | [Lucas Spinosa](http://github.com/LucasSpinosa)    | ----------- |
| 15/07/22 | 1.0    | Alteração na seção de requisitos                              | [Lucas Spinosa](http://github.com/LucasSpinosa)    | ----------- |
| 19/07/22 | 1.1    | Alteração na seção descrições das partes interessadas e usuários | [Lucas Spinosa](http://github.com/LucasSpinosa) | [Mauricio Machado Fernandes Filho](https://github.com/MauricioMachadoFF) |


## **1. Introdução**

Esse documento possui como objetivo exibir dados a respeito do projeto, permitindo assim a completa compreensão do mesmo em todos os âmbitos.


### 1.1 Propósito

O atual documento propõe apresentar o projeto UnB Flow, evidenciando o contexto em que o projeto se encontra, apresentando uma descrição dos envolvidos e uma visão geral do produto, bem como seus recursos, restrições e requisitos.

### 1.2 Escopo

O projeto objetiva auxiliar os alunos de graduação da UnB Campus Gama na escolha de matérias, facilitando ao aluno manter a aderência ao fluxo da faculdade, se organizar para o semestre e fazer essas escolhas de acordo com os seus interesses.  O projeto também conta com apresentação e avaliação dos docentes da instituição e um espaço para facilitar o networking com outros discentes.
Todo o produto será desenvolvido em uma aplicação mobile, com objetivo de que os alunos da UnB Campus Gama tenham o maior rendimento possível em suas escolhas para o semestre.

### 1.3 Definições, acrônimos e abreviações

Lista de termos usados no documento com objetivo de que todos possam entender seu conteúdo.

| **Sigla/Termo/Acrônimo** | **Definição**                          |
| ------------------------ | -------------------------------------- |
| UnB                      | Universidade de Brasília               |
| MDS                      | Métodos de Desenvolvimento de Software |

### 1.4 Referências 

IBM - Engineering Lifecycle Management - Vision Document. Disponível em: https://www.ibm.com/docs/pt-br/elm/6.0.5?topic=requirements-vision-document. Acessado em 13 jul 2022.

### 1.5 Visão Geral

O documento está dividido da seguinte forma:

| Seção                                     | Conteúdo                                                |
| :-----------------------------------------| :--------------------------------------------------------|          
| Introdução | Descrição geral do projeto |
| Posicionamento| Contexto de negócio em que o projeto está |
| Descrição das Partes Interessadas e do Usuário| Apresenta todos envolvidos no projeto|
| Visão Geral do Produto| Apresenta o propósito e capacidades do produto | 
| Recursos do produto | Expõe com mais detalhes quais são as funcionalidades do produto |
| Restrições | Exibe as limitações tanto do próprio produto quanto também do desenvolvimento |
| Requisitos do Produto | Detalha as exigências a serem satisfeitas pelo produto|

## **2. Posicionamento**

### 2.1 Oportunidade de negócios

Um grande desafio enfrentado pelos estudantes da UnB é o período de matrículas em disciplinas, em que ele deve escolher qual irá cursar durante o período letivo e, além disso, a opção de professor que irá lecioná-la.

Porém, apesar de importante, nota-se que essa decisão é feita com base em poucas informações, não se tendo conhecimento da didática do professor ou dificuldade da disciplina em si.

O UnB Flow busca solucionar o problema criando um ambiente em que alunos podem deixar suas avaliações e observações com relação tanto às matérias quanto aos docentes

### 2.2 Descrição do problema

| Problema                                                                                                                | Afeta                        | Impactos                                                                                                                                                                                                                                 | Solução                                                                                                                                                                                                    |
| ----------------------------------------------------------------------------------------------------------------------- | ---------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Falta de maiores informações sobre disciplinas ofertadas e seus docentes durante o período de matrícula em disciplinas. | Os alunos da UnB Campus Gama | Escolha de disciplinas mal-otimizada, levando à maior chance reprovações, trancamentos e sobrecarga do aluno. Tudo isso agrava um outro problema já existente: vagas em escassez, pois um trancamento significa uma oportunidade perdida | Criar um ambiente confortável para alunos que já cursaram as disciplinas deixarem suas avaliações, críticas e comentários sobre o professor, dificuldades que passaram e indicações de materiais de estudo |

### 2.3 Descrição da posição do produto

O produto poderá se posicionar no mercado como uma plataforma online útil para a comunidade da UnB Campus Gama, auxiliando e facilitando a vida de estudantes e também do corpo docente, que poderiam usar os relatos como base para se aperfeiçoarem, tudo isso em um ambiente seguro e confortável para ambas as partes.

## **3. Descrição das Partes Interessadas e dos Usuários**

### 3.1 Resumo das Partes Interessadas

| Nome                      | Descrição         | Função                                                 |
| :------------------------ | :---------------- | :----------------------------------------------------- |
| Avaliador                 | Docente de MDS    | Orientar desenvolvedores e analisar o produto          |
| Equipe de Desenvolvimento | Estudantes de MDS | Desenvolver o projeto e entregar  o produto finalizado |

### 3.2 Resumo dos Usuários

| Nome                           | Descrição                                                                                       |
| :----------------------------- | :---------------------------------------------------------------------------------------------- |
| Alunos da UnB Campus Gama      | Pesquisar informações sobre disciplinas e relatar experiências com as mesmas e seus professores |
| Professores da UnB Campus Gama | Visualizar as avaliações postadas na plataforma |
| Administrador da Plataforma    | Validar reviews e gerenciar usuários, banindo ou bloqueando aqueles que violam os termos de uso      |

### 3.3 Ambiente dos Usuários

O usuário poderá utilizar o aplicativo em um dispositivo móvel com sistema Android ou IOS.

### 3.4 Perfis das Partes Interessadas

#### 3.4.1 Avaliador 

| Representantes           | Descrição | Tipo           | Responsabilidade                                                  | Critério de sucesso                                                            | Envolvimento |
| :----------------------- | --------- | -------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------------------ | ------------ |
| Carla Silva Rocha Aguiar | Avaliador | Docente de MDS | Orientar a equipe de desenvolvimento e avaliar o produto entregue | Lecionar com êxito e observar a utilização das metodologias de desenvolvimento | Médio |

#### 3.4.2 Equipe de Desenvolvimento

| Representantes                                                                                                                                                                                                   | Descrição                 | Tipo              | Responsabilidade                                                              | Critério de sucesso                                                                                                              | Envolvimento |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------- | ----------------- | ----------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | ------------ |
|[Mauricio Machado Fernandes Filho](https://github.com/MauricioMachadoFF),</br> [Lucas Macedo Barboza](https://github.com/luckx98),</br> [Luan Melo Queiroz](https://github.com/Luanmq),</br> [Lucas de Lima Spinosa dos Santos](http://github.com/LucasSpinosa),</br> [Lucas Gabriel Sousa Camargo Paiva](https://github.com/lucasgabriel-2),</br> [Wengel Rodrigues Farias](https://github.com/Wengel-Rodrigues),</br> [Raphaela Guimarães de Araujo dos Santos](https://github.com/raphaiela)</br> | Equipe de Desenvolvimento | Estudantes de MDS | Desenvolver e completar o projeto com qualidade dentro do prazo da disciplina | Conseguir desenvolver  o produto com todas as funcionalidades planejadas e requisitos atendidos utilizando as metodologias ágeis | Alto |
|[Mauricio Machado Fernandes Filho](https://github.com/MauricioMachadoFF)| Product Owner | Estudante de MDS | Responsável por ter a visão do produto como um todo, gestor dos backlogs, priorizar as necessidades, compreender as expectativas e representar o cliente do projeto | Conseguir guiar a equipe de desenvolvimento para o caminho correto na produção do produto final | Alto|
|[Lucas Macedo Barboza](https://github.com/luckx98)| Scrum Master | Estudante de MDS | Responsável por gerir a equipe para que ela realize o trabalho, garantido que o SCRUM seja seguido corretamente| Garantir que a equipe tenha condições de realizar as sprints, auxiliando a eliminar ou reduzir os impeditivos | Alto 


### 3.5 Perfis dos Usuários

#### 3.5.1 Estudantes

| Descrição                 | Responsabilidades                                                                                             | Critérios de Sucesso                                                                                                                                              | Envolvimento |
| ------------------------- | ------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------ |
| Alunos da Unb Campus Gama | Relatar suas experiências com os docentes e disciplinas, avaliar a dificuldade das matérias cursadas por eles | Conseguir pesquisar mais sobre as disciplinas e seus professores, adquirindo assim mais informações para fazer de forma otimizada suas matrículas para o semestre | Alto         |

#### 3.5.2 Professores

| Descrição                      | Responsabilidades                                                                                           | Critérios de Sucesso                                                        | Envolvimento |
| ------------------------------ | ----------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------- | ------------ |
| Professores da UnB Campus Gama | Contemplar os feedbacks feitos pelos estudantes com relação à sua didática e  usando-as para se aperfeiçoar | Melhorar sua forma de lecionar com base nas opiniões postadas na plataforma | Baixo        |

### 3.6 Alternativas e Concorrências

#### Grupos no Facebook

Até então, uma forma que os discentes encontraram de obter mais informações é a criação e utilização de grupos no Facebook, como o “Avaliação de Professores - UNB”, para avaliação dos professores.

Embora tenha certo grau de utilidade, nota-se que essa abordagem possui problemas. Um deles é a falta de engajamento: muitas perguntas sobre determinados professores sequer são respondidas. Outro empecilho é a qualidade dos comentários. Muitos deles são rasos e carecem de informações relevantes, sendo poucos os que realmente poderiam fazer a diferença na tomada de decisão no período de matrícula.

## **4. Visão geral do Produto**

### 4.1 Perspectiva do Produto

O projeto tem como objetivo auxiliar os alunos da UnB Campus Gama na escolha de disciplinas. Para isso, serão apresentadas informações acerca dos cursos e suas disciplinas, avaliações de professores e uma forma de realizar networking com alunos cursando a mesma disciplina, além de disponibilizar uma área com a resposta para algumas perguntas frequentes.


### 4.2 Resumo das capacidades

| Benefício para o Usuário | Recursos de suporte |
| :----------------------: | :-----------------: |
| O aluno poderá realizar escolhas de disciplinas de forma mais consciente | A aplicação fornecerá dados sobre as disciplinas |
| O aluno poderá obter feedback sobre professores | A aplicação fornecerá a possibilidade de alunos que já cursaram a disciplina avaliarem os professores e fazerem comentários que ficarão disponíveis para futuros alunos |
| Facilidade de networking entre os alunos que estão cursando a mesma disciplina | A aplicação disponibiliza fóruns para que alunos de uma mesma disciplina interajam entre si |
| O professor poderá receber feedbacks | A aplicação permitirá comentários de alunos que já cursaram a disciplina, os quais ficarão disponíveis para os docentes |


### 4.3 Funções do Produto

O produto tem a função de auxiliar os alunos da UnB campus Gama na tarefa de escolher as matérias e maximizar as chances de bons resultados. Para isso,  contará com comentários de outros usuários, possibilidade de networking, além de permitir que professores também melhorem seu desempenho. As funcionalidades da plataforma são: login, cadastro, edição de perfil, descrição de cursos e matérias, seção de perguntas frequentes, avaliações de disciplinas e docentes, ranking e busca por cursos e disciplinas.

### 4.4 Suposições e dependências

•O usuário deverá possuir um celular com acesso à internet para poder ter acesso à aplicação.\
•A aplicação mobile será utilizada por alunos e professores da UnB Campus Gama.\
•A aplicação mobile irá ajudar ao aluno a obter melhores resultados durante o curso e aos professores a melhorarem sua didática por meio de feedbacks.


## **5. Recursos do Produto**

### 5.1 Filtrar Pesquisa

Os usuários podem pesquisar com mais eficiência utilizando critérios como tags, semestre, curso, etc. 

### 5.2 Avaliar Comentários

Os usuários podem avaliar as postagens de forma positiva ou negativa, adicionando pontos ou removendo-os. 

### 5.3 Manter Anonimato

Caso deseje, o usuário pode postar suas opiniões, porém mantendo sua identidade em segredo. 

### 5.4 Avaliar Disciplina e Professor 

O usuário pode avaliar a disciplina em termos de dificuldade, em um sistema de 0 a 5 estrelas, em que quanto mais alto a dificuldade, maior o número de estrelas. De mesmo modo, pode também avaliar o respectivo docente. 

### 5.5 Visualizar Ranking

O usuário pode contemplar quais são as disciplinas e professores mais bem avaliados na plataforma. 

### 5.6 Visualizar Perfis 

O usuário pode ver informações de outros perfis, como opção de curso, histórico de disciplinas e semestre atual. 


## **6. Restrições**

### 6.1 Restrições de Design

O design deve ser simples e com bom aspecto permitindo ao usuário uma navegação pelo aplicativo de forma intuitiva.

### 6.2 Restrições Externas

Adaptação do grupo com as tecnologias e metodologias de trabalho em equipe.


### 6.3 Restrições de Implementação

Deve ser implementado utilizando Flutter no Front-end e Node.js no Back-end.

### 6.4 Restrições de Uso

O aplicativo poderá ser acessado em celulares Android com acesso à internet.


## **7. Requisitos do Produto**

Lista de categorias de prioridades para requisitos
   
|    Tipo     |                                        Descrição                                                 |
|:----------- | :----------------------------------------------------------------------------------------------- |
|   Must      | Requisitos indispensáveis para o funcionamento do sistema                                        |
|   Should    | Requisitos importantes para o sistema, mas que possuem menor prioridade                          |
|   Could     | Requisitos que não são obrigatórios, mas não possuem tanta relevância na visão geral do sistema  |
|   Won't     | Requisitos que não precisam ser implementados no momento, mas seriam futuras melhorias           |

Lista de requisitos

| ID   | Requisito                                                                                                       | Prioridade  |
| :--- | :-------------------------------------------------------------------------------------------------------------- | :---------- |
| RF1  | Deve ser possível realizar o CRUD de usuário                                                                    | Must        |
| RF2  | Deve ser possível visualizar a descrição do curso                                                               | Must        |
| RF3  | Deve ser possível visualizar os fluxos disponíveis para um curso                                                | Could       |
| RF4  | Deve ser possível visualizar a descrição da disciplina                                                          | Must        |
| RF5  | Deve ser possível realizar o CRUD de avaliação da disciplina com o docente relacionado                          | Must        |
| RF6  | Deve ser possível acessar ao ranking de disciplinas com o docente relacionado                                   | Must        |
| RF7  | Deve ser possível acessar à lista de alunos revisores de disciplinas                                            | Could       |
| RF8  | Deve ser possível fazer busca por curso                                                                         | Must        |
| RF9  | Deve ser possível fazer busca por disciplina                                                                    | Must        |
| RF10 | Deve ser possível filtrar o ranking de disciplinas com o docente relacionado por professor, aluno ou disciplina | Could       |
| RF11 | Deve ser possível buscar por pessoa cursando a mesma disciplina                                                 | Should      |
| RF12 | Deve ser possível visualizar o FAQ                                                                              | Should      |
| RF13 | Deve ser possível realizar o CRUD de fórum                                                                      | Should      |
| RF14 | Deve ser possível realizar o CRUD de mensagem no fórum                                                          | Should      |
| RNF1 | O software deve ser desenvolvido com Flutter no Front-end e Node.js no Back-end                                 | Must        |
| RNF2 | O software deve ser desenvolvido para ambiente mobile                                                           | Must        |
| RNF3 | O software deve ter uma interface simples e intuitiva                                                           | Must        |
