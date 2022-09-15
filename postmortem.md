# Post Mortem
## Histórico de revisão

| Data       | Versão | Modificação                                      | Autor                                                    |
| :--------- | :----- | :----------------------------------------------- | :------------------------------------------------------- |
| 07/06/2022 | 0.1    | Criação do documento                             | [Maurício Machado](https://github.com/MauricioMachadoFF) |
| 12/09/2022 | 1.0    | Edição do documento                              | [Lucas Macedo](https://github.com/Luckx98)               |
| 14/09/2022 | 1.1    | Escrita das tecnologias de FrontEnd no documento | [Maurício Machado](https://github.com/MauricioMachadoFF) |
| 14/09/2022 | 1.2    | Escrita das tecnologias de Backend no documento  | [Lucas Spinosa](http://github.com/LucasSpinosa)          |
| 14/09/2022 | 1.3    | Escrita da metodologia e processos               | [Lucas Macedo](https://github.com/Luckx98)               |
| 14/09/2022 | 1.4    | Alteração na seção de tecnologias de Backend     | [Lucas Spinosa](http://github.com/LucasSpinosa)          |


# Introdução

Este documento é uma reflexão do time, realizada na fase de finalização do projeto, para concretizar as lições aprendidas e permitir que projetos futuros similares possam ser facilitados.

# Escopo do Projeto

O College Flow será um aplicativo voltado para estudantes do campus FGA da UnB, com o intuito de ajudar na hora de realizar matrícula em matérias. O escopo principal consistia em abranger todos os estudantes do campus, contando com um sistema de login e autenticação, onde poderiam avaliar professores e matérias conforme cursavam. Porém, devido ao semestre ser bastante corrido e apertado, sendo apenas de 3 meses, o time resolveu reduzir para um escopo de realização mais rápida e simples. O novo escopo acabou se tornando apenas um aplicativo de reviews de matérias e abrangendo apenas as matérias do curso de Engenharia de Software.

# Metodologia e Processo

Nosso grupo optou, seguindo os conselhos da professora e dos monitores, utilizar um método misto entre o Scrum e o XP Programming, na sua grande parte, principalmente na Realese 2, os método foram seguidos corretamente, em que, todos os grupos conseguiram captar os conceitos base dessas metodologias, e suas importancias para o desenvolvimento de um grande escopo como o nosso.

O Scrum mostrou seu poder principalmente nas áreas de produtividade e de revisão, em que a cada sprint alocamos algumas issues nas etapas do kanban, aumentando a nossa produtividade em geral. Mantemos os ritos no mesmo dia, geralmente era toda terça feira, onde a primeira 1 hora era destinado aos ritos de retrospectiva e review, e depois havia o momento de planning da nova sprint. Tentamos manter as dailys sendo diárias via discord, porém, com o decorrer da semana de forma complicada, optamos por deixar a daily ser escrita. Porém, com esse formato, acabou que impactou na comunicação do grupo, as vezes não sendo tão explicadas e muitas vezes deixavamos pra resolver assuntos importantes em reuniões.

Quanto ao Extreme Programming, utilizamos principalmente a programação pareada, em que a cada planning nós discutiamos quem iria parear com quem, para ter mais fluxo de conhecimento. Com tudo, houveram algumas falhas de comunicação entre a equipe e alinhamento, assim exigindo muitas vezes debater sobre assuntos umas vez ja discutidos e outras mudanças;

- _Pontos Negativos_: A comunicação em geral foi algo que precisavamos melhorar muito no trabalho, principalmente na reta final com o desfoco de alguns membros devido ao aumento da carga horaria em outras materias. Falta de alinhamento o que impactou na diminuição do escopo do projeto.

# Tecnologias utilizadas

## Tecnologias utilizadas no backend

Para desenvolvimento do backend da aplicação, foi utilizado Node.js. Com relação ao banco de dados, foi escolhido o MongoDB Atlas devido à sua facilidade de integração com a linguagem citada anteriormente e por ser salvo em nuvem. Por fim, foi utilizado o Heroku para fazer o deploy do código por ser uma plataforma convenientemente simples e fácil de ser operada.

Dentre os módulos de Node.js utilizados, vale destacar:

- Express: Criação de servidores e requisições.
- Mongoose: Conexão com o banco de dados e criação de models.
- Jest e Supertest: Criação de testes unitários.

## Tecnologias utilizadas no mobile

Para desenvolvimento mobile, a equipe utilizou do framework flutter juntamente de emuladores (IOS e Android). Para os emuladores no android foi necessário baixar o android studio.
Vale ressaltar o uso de pacotes de grande relevância para nossa aplicação são eles:

- Retrofit: Geração de código para cliente dio.
- Dio: Realização de requisições HTTP.
- Freezed: Geração de código para classes (models) e para padrão BLoC.
- BLoC: Gerenciamento de estados da aplicação.
- Equatable: Auxilia na escrita do override de operadores de comparação
- Get_It: Localizador de serviços.
- Flutter_rating_bar: Estrelas para geração de avaliações.

## Tecnologias utilizadas na configuração dos ambientes

- Desenvolvimento em sistemas operacionais MacOs e Linux.

- Utilização de flutter na versão 3.0.4. Além disso, para facilitar o gerenciamento de versões do flutter usamos o fvm (Flutter Version Management).

- Para escrita de documentos usamos as seguintes IDEs: VsCode e IntelliJ.

- Para criação de ambientes de desenvolvimento: Docker e Docker Compose.

# Sentimentos da Equipe

O Scrum Master elaborou algumas perguntas para que os membros do time respondam como foi o andamento do projeto.

Segue abaixo as perguntas elaboradas:

- [1]- O que vc aprendeu que vai levar para prevenir eventos similiares futuros?

- [2]- Quais foram os resultados positivos que vocês obtiveram ao decorrer do projeto?

- [3]- Quais foram as dificuldades que obtiveram durante o processo? De que forma conseguiram resolver?

- [4]- De que forma vocês podem avaliar sua experiência ao longo do projeto?

- [5]- Comentários adicionais (pontos que querem adicionar a mais)

## Lucas Macedo

- [1] - No começo do projeto, tive a missão de ser o scrum master da equipe além de desenvolvedor. No começo, obtive bastante dificuldade em representar esse papel, visto que não levo muito jeito em organizar minhas coisas, porém, acredito que ao final consegui desenvolver um trabalho incrível tendo o apoio do time como um todo. Mesmo com o projeto bem corrido de tempo, aprendi a trabalhar melhor em equipe e gerir ritos comuns de sprint.
- [2] - Pude ver meu desenvolvimento ao decorrer do projeto, correndo atrás de assuntos do qual não sabia como nem começar e avançar conforme o decorrer do tempo.
- [3] - Além do mencionado do papel de Scrum Master, acredito que ter o contato com uma nova linguagem (como o flutter) e aprender o básico para gerir um projeto do zero.
- [4] - Como todo projeto, teve seus pontos baixos e altos, mas acredito que tenha sido uma experiência bastante importante para minha vida e carreira.
- [5] - O time como um todo pecou na comunicação interna, onde vários momentos deixamos para resolver alguns problemas durante reuniões de planning. Porém, acredito que todos deram o seu máximo para a execução do projeto. Incrível a oportunidade de trabalhar com todos e conhece-los.

## Maurício Machado

- [1] - Definição de prazos é algo que deve ser revisitado constantemente. Definir um prazo sem ter em mãos todos os problemas levantados, gera estresse desnecessário.
- [2] - Levantei mais conhecimentos técnicos sobre flutter e como estruturar um projeto do zero de forma que se torne escalável. Além disso, aprendi sobre testes de integração que garantem uma melhor fluidez do aplicativo.
- [3] - Principal dificuldade foi entrar no ritmo, acredito que ter sintonia em equipe possui uma relação proporcional, quanto mais membros mais difícil. Outra grande dificuldade foi o tempo curto do projeto. O semestre possuía por volta de 3 meses e duas semanas foram voltadas pra integração, assim tivemos dois meses e meio de projeto. Juntando isso com a dificuldade de planejamento, gerou-se uma visão deturpada do que iríamos entregar. Ao final das contas, tivemos que reduzir o escopo, o que pessoalmente enxergo como positivamente, pois o time teve a responsabilidade de apresentar que aquele prazo não condizia com o que tínhamos alinhado para entrega.
- [4] - Avaliamos a experiência com quadros de conhecimento e sprints. Acredito que essa matéria é muito proveitosa para de fato sujar as mãos e sair da teoria. Minha experiência como um todo foi boa, tendo como principal desafio a busca por alinhamento com o restante da equipe.
- [5] - Nosso resultado final ficou muito bom, conseguimos implementação de testes com uma arquitetura que facilita muito a escalabilidade de produtos. Assim, tenho grande esperança de continuar desenvolvendo esse produto para conseguirmos gerar de fato um produto consumido pelos alunos da UnB. No estado atual ele se apresenta como um MVP para uma única matéria, mas com um estudo de coleta de matérias pode ser propagado para todas as matérias da UnB.

## Lucas Spinosa

- [1] - É importante ter conhecimento prévio das tecnologias que serão utilizadas. Além disso, é muito importante nivelar o conhecimento de toda a equipe a fim de evitar falta de produtividade e perda de tempo.
- [2] - Aprender sobre servidores (o que são portas, deploy, requisições) e Git, ter mais noção sobre banco de dados, e aprender sobre metodologias ágeis. Além disso, como aprender a lidar com problemas inesperados.
- [3] - Falta de conhecimento sobre a linguagem utilizada, requisições de servidor e banco de dados. A solução foi procurar por tutoriais na Internet.
- [4] - Foi uma experiência interessante. Foi muito desafiador e aconteceram problemas em diversos momentos, mas ao final deu tudo certo.
- [5] - \*\*\*

## Wengel Rodrigues

- [1] - Rever sobre prazos
- [2] - Aprendei bastante sobre flutter algo que eu já estava planejando e me deu experiência em um primeiro projeto em equipe.
- [3] - No inicio não tinha familiaridade com o flutter mas fui tentando e consegui desenvolver com ajuda de membros mais experientes e prazo curto com outras matérias juntos. Acabamos reduzindo nosso projeto.
- [4] - Foi uma boa experiência e aprendizado.
- [5] - \*\*\*

## Lucas Gabriel

- [1] - É necessário ter em mente o quão grande é a curva de aprendizagem das tecnologias e nivelar a equipe nelas para que todos possam contribuir de forma efetiva.
- [2] - Acredito que os principais resultados positivos foram a aprendizagem de como trabalhar em uma equipe de desenvolvimento de software utilizando metodologias ágeis no dia a dia.
- [3] - A principal dificuldade que tive durante a criação do projeto foi a adaptação a novas tecnologias, muitas coisas para aprender em um curto espaço de tempo, e algo que me ajudou bastante foi realizar pesquisa de bons materiais na internet e realizar o estudo desses em grupo, especialmente com a equipe do backend, a qual foi fundamental para entrega do produto final.
- [4] - Considero que foi uma ótima experiência, a qual me deu a oportunidade de conhecer como funciona na prática o trabalho do engenheiro de software em uma equipe.
- [5] - \*\*\*

## Luan Melo

- [1] - Trabalhar mais a comunicação na equipe e traçar um plano desde o início para garantir um alinhamento dos membros durante todo o projeto
- [2] - Da minha parte, fiquei feliz com o resultado da UI e o design system, aprendi bastante coisa com isso e com certeza vou procurar usar sempre nos projetos que eu fizer
- [3] - Tive uma dificuldade com o sistema operacional no começo e na adaptação do flutter depois. A parte do sistema ainda não mexi tanto, acabei contornando de outra forma, e na parte do flutter fui tentando aos poucos e consegui entender e aplicar algumas coisas
- [4] - Foi uma experiência até que confortável de uma forma geral, por que fiquei com uma área que já conheço e já tinha uma ideia do que precisava ser feito, mas mesmo assim aprendi coisas novas e melhorei o que já sabia
- [5] - Eu acabei que fiquei mais focado na parte de UI/design system/identidade visual e foi uma experiência boa, mas ainda senti falta de mexer mais no código e aprender mais sobre o flutter, ainda não sinto que consigo me virar o suficiente pra fazer algo sozinho.

## Raphaela Guimarães

- [1] - É importante ter uma visão mais integral de um projeto para desenvolver melhor as tarefas, ter uma noção do que é prioritário, determinar qual a melhor estratégia para desenvolver aquele produto. Além disso, o processo de entrega contínua e realização de dailys incentiva a contribuição de todos os integrantes da equipe e aumenta a produtividade.
- [2] - Pelo que eu percebi, principalmente no time em que eu estava, é que aprendemos muito sobre a linguagem que utilizamos, além de termos aprendido como trabalhar como uma equipe dev
- [3] - Gerir o tempo. Eram muitas coisas para fazer/entregar além de ter que aprender a como fazer e entregar. Sem dúvidas os métodos ágeis contribuíram para que esse tempo fosse mais otimizado e melhor gerido
- [4] - Foi uma experiência desafiadora, muito interessante. Foi algo muito diferente do que passaram para mim na faculdade até agora, foi o mais perto, lá dentro, que eu cheguei perto de uma experiência real trabalhando na área
- [5] - Admiro muito meu time pois eu percebo o esforço que cada um fez e, mesmo com todas a dificuldades, conseguimos entregar uma release legal de um projeto muito interessante que tem grande potencial

# Conclusão

Foi a primeira experiencia da equipe em um projeto ágil, assim havendo algumas inseguranças e medos durante o semestre. Com isso, como podemos notar nas notas dos sentimentos da equipe, essa matéria proporcionou vários aprendizados e mudanças que nos fizeram melhores programadores em geral. Mesmo havendo algumas dificuldades e estresses em relação ao projeto e aos outros membros, fora ter ocorrido mudanças ao longo do projeto e do escopo, como equipe, estamos orgulhosos do nosso produto e temos a sensação de dever cumprido.