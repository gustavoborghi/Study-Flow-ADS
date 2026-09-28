```mermaid
flowchart TD
    Inicio([Início]) --> Login[Usuário realiza cadastro/login]
    Login --> Rotina[Configura rotina]
    Rotina --> Objetivos[Define objetivos de estudo]
    Objetivos --> Materias[Cadastros de matérias e tarefas]
    Materias --> Disponibilidade[Identifica horários disponíveis]
    Disponibilidade --> Plano[Gera plano de estudos]
    Plano --> Visualizar[Usuário visualiza o plano]
    Visualizar --> Estudar[Realiza sessão de estudo]
    Estudar --> Registrar[Registra sessão]
    Registrar --> Progresso[Atualiza progresso]
    Progresso --> Decisao{Precisa adaptar o plano?}
    Decisao -->|Sim| Adaptar[Adapta planejamento]
    Adaptar --> Plano
    Decisao -->|Não| Fim([Fim])