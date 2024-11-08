**Flowchart TB**
    %% Cliente
    A[Início]
    F[Cadastro/Login Cliente]
    B[Vitrine Virtual]
    C[Escolher Produto]
    D[Adicionar ao Pedido]
    E[Carrinho de Compras]
    H[Confirmação de Pedido]
    I[Entrega]
    J[Editar Dados Pessoais]

    %% Admin
    AA[Acesso Administrador]
    AB[Gerenciar Produtos]
    AC[Visualizar Produtos]
    AD[Adicionar Produto]
    AE[Editar Produto]
    AF[Excluir Produto]
    AG[Ver Todos os Pedidos]
    AH[Editar Email/Senha]
    
    %% conexões cliente 
    A --> F --> B --> C --> D --> E --> H --> I
    F -.-> J
    J --> F

    %% conexões admin
    A -.-> AA
    AA --> AB
    AA --> AG
    AA --> AH

    %% conexões funcionalidades admin
    AB --> AC
    AB --> AD
    AB --> AE
    AB --> AF

    %% classes
    class B,C,D,E,H,I,J clienteProcess
    class AB,AC,AD,AE,AF,AG,AH adminProcess
