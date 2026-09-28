```mermaid
graph LR
    subgraph Sistema Study Flow
        UC1((Cadastrar/Login))
        UC2((Configurar Rotina))
        UC3((Definir Objetivos))
        UC4((Configurar Lembretes))
        UC5((Gerenciar Matérias))
        UC6((Gerar Plano de Estudos))
        UC7((Visualizar Plano))
        UC8((Registrar Sessão de Estudo))
        UC9((Acompanhar Progresso))
    end

    Usuario((Usuário))

    %% Ações do Usuário
    Usuario --> UC1
    Usuario --> UC2
    Usuario --> UC3
    Usuario --> UC4
    Usuario --> UC5
    Usuario --> UC6
    Usuario --> UC7
    Usuario --> UC8
    Usuario --> UC9