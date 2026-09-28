```mermaid
classDiagram

    class Usuario {
        +id: int
        +nome: string
        +email: string
        +senha: string
    }

    class Rotina {
        +id: int
        +descricao: string
        +horarioInicio: time
        +horarioFim: time
    }

    class Compromisso {
        +id: int
        +descricao: string
        +data: date
        +horarioInicio: time
        +horarioFim: time
    }

    class Objetivo {
        +id: int
        +descricao: string
        +prazo: date
        +status: string
    }

    class Materia {
        +id: int
        +nome: string
        +descricao: string
    }

    class Tarefa {
        +id: int
        +descricao: string
        +prazo: date
        +status: string
    }

    class PlanoEstudos {
        +id: int
        +dataInicio: date
        +dataFim: date
        +status: string
    }

    class SessaoEstudo {
        +id: int
        +data: date
        +horarioInicio: time
        +horarioFim: time
        +duracao: int
    }

    class Lembrete {
        +id: int
        +descricao: string
        +dataHora: datetime
        +status: string
    }

    class Progresso {
        +id: int
        +percentual: float
        +horasEstudadas: float
        +dataAtualizacao: date
    }

    Usuario "1" --> "1" Rotina
    Usuario "1" --> "*" Compromisso
    Usuario "1" --> "*" Objetivo
    Usuario "1" --> "*" Materia
    Usuario "1" --> "*" Lembrete
    Usuario "1" --> "1" Progresso

    Materia "1" --> "*" Tarefa
    Objetivo "1" --> "*" Materia

    Usuario "1" --> "*" PlanoEstudos
    PlanoEstudos "1" --> "*" SessaoEstudo
    SessaoEstudo "*" --> "1" Materia
    SessaoEstudo "*" --> "1" Tarefa

    Rotina "1" --> "*" Compromisso