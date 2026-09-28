```mermaid
sequenceDiagram
    actor Usuario
    participant App as Aplicativo
    participant Backend as Backend
    participant BD as Banco de Dados

    Usuario->>App: Solicita geração do plano
    App->>Backend: Envia dados da rotina e objetivos
    Backend->>BD: Consulta rotina, compromissos e objetivos
    BD-->>Backend: Retorna dados do usuário
    Backend->>Backend: Analisa horários disponíveis
    Backend->>Backend: Gera plano de estudos
    Backend->>BD: Salva plano de estudos
    BD-->>Backend: Confirma salvamento
    Backend-->>App: Retorna plano de estudos
    App-->>Usuario: Exibe plano de estudos