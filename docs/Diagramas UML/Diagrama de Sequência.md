# Diagrama de Sequência: Gerar Plano de Estudos

```mermaid
sequenceDiagram
    autonumber
    actor Usuario
    participant App as Aplicativo
    participant Backend
    participant BD as Banco de Dados

    Usuario->>App: Solicita geração do plano (escolhe o objetivo)
    App->>Backend: Envia requisição com id do usuário e do objetivo
    Backend->>BD: Consulta objetivo, rotina, compromissos, matérias e tarefas
    BD-->>Backend: Retorna os dados
    Backend->>Backend: Calcula horários disponíveis

    alt Há horários suficientes
        Backend->>Backend: Distribui as sessões de estudo nos horários livres
        Backend->>BD: Salva plano e sessões planejadas
        BD-->>Backend: Confirma salvamento
        Backend-->>App: Retorna plano de estudos
        App-->>Usuario: Exibe plano de estudos
    else Horários insuficientes
        Backend-->>App: Informa que não há horários suficientes
        App-->>Usuario: Sugere ajustar a rotina ou o prazo do objetivo
    end
```

## Observações

- Os dados de rotina, compromissos e objetivos já estão salvos no banco desde a configuração. Por isso o aplicativo envia só os identificadores, e o backend busca o resto.
- O plano salvo é composto por um `PlanoEstudos` e várias `SessaoEstudo` com status `planejada`, como no diagrama de classes.
- O mesmo fluxo vale para a adaptação do plano: o backend recalcula os horários e gera um novo plano.
