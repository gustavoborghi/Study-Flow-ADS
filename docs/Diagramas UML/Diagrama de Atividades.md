# Diagrama de Atividades

```mermaid
flowchart TD
    Inicio([Início]) --> Login[Realiza cadastro/login]
    Login --> Rotina[Configura rotina e compromissos]
    Rotina --> Objetivos[Define objetivos de estudo]
    Objetivos --> Materias[Cadastra matérias e tarefas]
    Materias --> Disponibilidade[Identifica horários disponíveis]
    Disponibilidade --> Plano[Gera plano de estudos]
    Plano --> Lembretes[Configura lembretes - opcional]
    Lembretes --> Visualizar[Visualiza o plano]
    Visualizar --> Estudar[Realiza sessão de estudo]
    Estudar --> Registrar[Registra sessão]
    Registrar --> Progresso[Calcula e exibe progresso]
    Progresso --> Ajuste{Plano precisa de ajuste?}
    Ajuste -->|Sim| Adaptar[Adapta planejamento]
    Adaptar --> Disponibilidade
    Ajuste -->|Não| Concluido{Objetivo concluído?}
    Concluido -->|Não| Visualizar
    Concluido -->|Sim| Fim([Fim])

    classDef usuario fill:#EFF6FF,stroke:#2563EB,color:#1E293B
    classDef sistema fill:#ECFDF5,stroke:#059669,color:#1E293B
    class Login,Rotina,Objetivos,Materias,Lembretes,Visualizar,Estudar,Registrar usuario
    class Disponibilidade,Plano,Progresso,Adaptar sistema
```

## Legenda

- **Azul:** ações do usuário.
- **Verde:** ações feitas automaticamente pelo sistema.

## Observações

- Os passos de configuração (rotina, objetivos, matérias) acontecem no primeiro uso. Nos acessos seguintes, o usuário segue direto para a visualização do plano.
- O sistema decide se o plano precisa de ajuste quando, por exemplo, uma sessão é pulada ou a rotina muda. Ao adaptar, ele recalcula os horários disponíveis e gera um novo plano.
- O progresso não é guardado no banco: é calculado a partir das sessões concluídas, como no diagrama de classes.
