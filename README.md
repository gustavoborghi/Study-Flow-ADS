![Logo Study Flow](docs/Logo%20StudyFlow.jpeg) 
# 📚 Study Flow

> **Encontre o melhor tempo. Faça acontecer.**

O **Study Flow** é um aplicativo mobile que ajuda pessoas com rotinas corridas a encontrar os melhores horários para estudar e a montar um cronograma de estudos realista.

🟡 **Status:** em desenvolvimento — fase de proposta de solução

---

## 🎯 Sobre o projeto

Conciliar estudos com trabalho, faculdade e vida pessoal não é fácil. Muita gente quer estudar, mas tem dificuldade para:

* encontrar horários livres;
* montar e manter uma rotina de estudos;
* reorganizar o plano quando algo inesperado acontece;
* acompanhar a própria evolução.

O usuário informa sua rotina, seus compromissos e seus objetivos, e o Study Flow identifica os horários disponíveis e ajuda a organizar o plano de estudos, adaptando-o quando necessário.

---

## 🚀 Funcionalidades

As funcionalidades abaixo fazem parte da proposta inicial e ainda estão sujeitas à validação.

**Núcleo (MVP, a versão mínima do app que já resolve o problema)**

* [ ] Cadastro e login
* [ ] Configuração manual da rotina e dos compromissos
* [ ] Definição de objetivos de estudo
* [ ] Cadastro de matérias e tarefas
* [ ] Geração do plano de estudos a partir dos horários disponíveis
* [ ] Lembretes de estudo
* [ ] Registro das sessões de estudo
* [ ] Acompanhamento do progresso

**Após o núcleo**

* [ ] Integração com o Google Agenda: ao cadastrar a rotina, o usuário poderá importá-la automaticamente ou continuar configurando manualmente
* [ ] Adaptação automática do plano quando a rotina muda
* [ ] Relatórios de estudo

---

## 🖥️ Telas

O [protótipo](https://gustavoborghi.github.io/Study-Flow-ADS/docs/prototipos/study-flow-frontend/) reúne as principais telas do app e pode mudar durante a validação.

* **Onboarding:** apresentação do app
* **Dashboard:** visão geral da rotina
* **Agenda:** horários e plano de estudos
* **Matérias:** matérias e tarefas
* **Metas:** objetivos de estudo
* **Progresso:** evolução ao longo do tempo
* **Configurações:** ajustes do app, da rotina e perfil

---

## 🗓️ Roadmap do MVP

* **Milestone 1: Planejamento e design** 🔄
  * Pesquisa com usuários, diagramas UML, protótipo clicável, dados fictícios em planilha e definição da metodologia.
* **Milestone 2: Base técnica**
  * Estrutura do app em React Native, API em Python, modelagem do MySQL a partir do diagrama de classes, cadastro e login.
* **Milestone 3: Rotina, objetivos e matérias**
  * Telas e API para rotina e compromissos, objetivos, matérias e tarefas.
* **Milestone 4: Plano de estudos**
  * Cálculo dos horários livres, geração do plano de estudos e visualização na Agenda.
* **Milestone 5: Acompanhamento**
  * Registro das sessões, cálculo do progresso e lembretes de estudo.
* **Milestone 6: Integração com o Google Agenda**
  * Importação da rotina pela API do Google, mantendo a configuração manual como alternativa.
* **Milestone 7: Testes e entrega**
  * Testes com usuários, correção de bugs, ajustes de interface e apresentação final.

---

## 🛠️ Tecnologias

> As tecnologias podem ser ajustadas conforme o desenvolvimento do projeto.

📱 **Frontend / Mobile (Android)**

![React Native](https://img.shields.io/badge/React_Native-61DAFB?style=plastic&logo=react&logoColor=black) ![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=plastic&logo=typescript&logoColor=white) ![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=plastic&logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=plastic&logo=css3&logoColor=white)

🖥️ **Backend**

![Python](https://img.shields.io/badge/Python-FFD43B?style=plastic&logo=python&logoColor=3776AB)

💾 **Banco de dados**

![MySQL](https://img.shields.io/badge/MySQL-F29111?style=plastic&logo=mysql&logoColor=black)

🧰 **Ferramentas**

![Git](https://img.shields.io/badge/Git-F05032?style=plastic&logo=git&logoColor=white) ![GitHub](https://img.shields.io/badge/GitHub-181717?style=plastic&logo=github&logoColor=white) ![GitHub Pages](https://img.shields.io/badge/GitHub_Pages-222222?style=plastic&logo=githubpages&logoColor=white) ![Mermaid](https://img.shields.io/badge/Mermaid-FF3670?style=plastic&logo=mermaid&logoColor=white) ![Google Calendar API](https://img.shields.io/badge/Google_Calendar_API-4285F4?style=plastic&logo=googlecalendar&logoColor=white)

---

## 🔄 Metodologia

O projeto segue uma abordagem **ágil, baseada em Kanban**:

* **quadro Kanban** no GitHub Projects, com as colunas A fazer, Em andamento, Em revisão e Concluído;
* **tarefas pequenas**, cada uma com um responsável, para entregar uma parte funcionando de cada vez;
* **alinhamento semanal** do time sobre o que foi feito, o que vem a seguir e o que está travado;
* código versionado com **branches e pull requests**.

Escolhemos uma abordagem ágil porque já sabemos o que o app deve fazer, mas ainda estamos definindo como construí-lo. Entregas pequenas permitem aprender no caminho e ajustar sem refazer tudo.

---

## 📁 Documentação

A pasta `docs/` reúne o material de planejamento do projeto.

**Diagramas UML**

* [Casos de uso](docs/Diagramas%20UML/Diagrama%20de%20Caso%20de%20Uso.pdf) (PDF)
* [Classes](docs/Diagramas%20UML/Diagrama%20de%20Classes.md)
* [Atividades](docs/Diagramas%20UML/Diagrama%20de%20Atividades.md)
* [Sequência: gerar plano de estudos](docs/Diagramas%20UML/Diagrama%20de%20Sequ%C3%AAncia.md)

Os diagramas em Markdown são escritos com [Mermaid](https://mermaid.js.org/) e aparecem desenhados direto no GitHub.

## 🗂️ Modelo de dados

A [planilha com dados fictícios](https://docs.google.com/spreadsheets/d/1Gd6mVYKqyyuQG8Na9SuRHLRsNzLCZeUP/edit?usp=sharing&ouid=101436574695752963454&rtpof=true&sd=true) mostra como o banco de dados será organizado, com uma aba para cada tabela do [diagrama de classes](docs/Diagramas%20UML/Diagrama%20de%20Classes.md).

**Protótipo**

O protótipo de telas funciona no **computador e no celular**, direto no navegador, **sem baixar nem instalar nada**:

👉 **[Abrir o protótipo](https://gustavoborghi.github.io/Study-Flow-ADS/docs/prototipos/study-flow-frontend/)** (hospedado no GitHub Pages)

Se preferir, também é possível [baixar a pasta do protótipo](https://github.com/gustavoborghi/Study-Flow-ADS/tree/main/docs/prototipos/study-flow-frontend) e abrir o arquivo `index.html` no navegador.

---

## 👥 Público-alvo

Pessoas que precisam conciliar os estudos com uma rotina cheia, como estudantes universitários e de cursos técnicos, quem trabalha e estuda, candidatos a concursos e vestibulares, e quem faz cursos online ou estuda por conta própria.

---

## 🔎 Validação

Estamos pesquisando com potenciais usuários para entender como organizam seus estudos hoje, quais são suas maiores dificuldades e quais funcionalidades mais interessam. Os resultados vão orientar as próximas decisões do projeto.

---

## ▶️ Como rodar o projeto

🚧 **Em breve.**

---

## 👨‍💻 Integrantes

| Integrante | GitHub |
|---|---|
| Erick | [@ErickAlves38](https://github.com/ErickAlves38) |
| Fábio Jr. | [@fjunior10](https://github.com/fjunior10) |
| Fernando Cunha | [@cunhafernando1403](https://github.com/cunhafernando1403) |
| Gustavo Borghi | [@gustavoborghi](https://github.com/gustavoborghi) |
| Yuri Palladino | [@Pall4dino](https://github.com/Pall4dino) |

---

## 📄 Contexto acadêmico e licença

Projeto desenvolvido para a disciplina de **Projeto Integrador 1**, com o objetivo de investigar um problema real e propor uma solução tecnológica. O fluxo do trabalho é: **problema → validação → proposta de solução → desenvolvimento**.

Uso exclusivamente acadêmico.
